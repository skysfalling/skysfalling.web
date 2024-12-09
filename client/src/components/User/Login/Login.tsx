import { ErrorMessage, Field, Form, Formik } from "formik";
import { useContext, useState } from "react";
import { AuthContext } from "../../../context";
import { AuthService } from "../../../classes/AuthService";

import "../User.styles.css";
import { IAuthRequest, IAuthResponse } from "@shared/types";

/**
 * Login component
 * @returns {JSX.Element} Login component
 */
export default function Login() {
  const [loginSuccess, setLoginSuccess] = useState(false);
  const [loginError, setLoginError] = useState<string | null>(null);

  // Get auth context
  const authContext = useContext(AuthContext);

  // Initialize service outside of render
  const service = new AuthService(authContext.setAuthContext);

  const initialValues: IAuthRequest = {
    email: "astro@dummy.com",
    password: ""
  };

  return (
    <div>
      <h2>Login</h2>
      <Formik
        initialValues={initialValues}
        validationSchema={service.AuthLoginValidationSchema}
        onSubmit={async (values) => {
          const result: IAuthResponse = await service.Login(values);
          if (result.success) {
            setLoginSuccess(true);
            setLoginError(null);
          } else {
            setLoginSuccess(false);
            setLoginError(result.message);
          }
        }}
      >
        {({ isSubmitting }) => (
          <Form>
            {/* (( EMAIL FIELD )) -------- >> */}
            <div className="form-group">
              <Field
                type="email"
                name="email"
                placeholder="Email"
                className="form-input"
              />
              <ErrorMessage
                name="email"
                component="div"
                className="error-message"
              />
            </div>

            {/* (( PASSWORD FIELD )) -------- >> */}
            <div className="form-group">
              <Field
                type="password"
                name="password"
                placeholder="Password"
                className="form-input"
              />
              <ErrorMessage
                name="password"
                component="div"
                className="error-message"
              />
            </div>
            <button 
              type="submit" 
              className="submit-button"
              disabled={isSubmitting}
            >
              {isSubmitting ? 'Logging in...' : 'Login'}
            </button>

            <div className="submit-result">
              {loginError && <div className="submit-result-error">{loginError}</div>}
              {loginSuccess && <div className="submit-result-success">Login successful</div>}
            </div>
          </Form>
        )}
      </Formik>
    </div>
  );
}