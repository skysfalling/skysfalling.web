import React, { useEffect, useState, Suspense, lazy } from "react";
import { Route, BrowserRouter as Router, Routes } from "react-router-dom";
import axios from "axios";
import AuthService from "./classes/services/AuthService";
import Navbar from "./components/Navbar";
import { AuthContext, AuthContextValues } from "./context";
import type NavLink from "./interfaces/NavLink";
import { PageNotFound } from "./layouts";
import "./styles/main.css";
import { NetworkConfig } from "./config";
import ErrorService from "shared/ErrorService";
import UserService from "./classes/services/UserService";

const Home = lazy(() => import('./layouts/Home'));
const Profile = lazy(() => import('./layouts/Profile'));
const UserModeration = lazy(() => import('./layouts/admin/UserModeration'));

const navLinks: NavLink[] = [
  { to: "/", label: "Home", component: Home },
  { to: "/profile", label: "Profile", component: Profile },
  { to: "/admin", label: "Admin", component: UserModeration },
];

function App() {
  // Define auth state and user state separately for better control
  const [authContext, setAuthContext] = useState<AuthContextValues>({ status: false, user: undefined });
  const [checkAuth, setCheckAuth] = useState<boolean>(false);
  const [serverStatus, setServerStatus] = useState<'checking' | 'connected' | 'error'>('checking');

  /*
  useEffect(() => {
    if (!checkAuth) {
      AuthService.CheckAuthentication();
      setCheckAuth(true);
    }
  }, [checkAuth, authContext]);
  */

  return (
    <AuthContext.Provider value={{ ...authContext, setAuthContext }}>
      <Router>
        <div className="App">
          <Navbar links={navLinks} />
          <main>
            <Suspense fallback={<div>Loading...</div>}>
              <Routes>
                {navLinks.map(({ to, component: Component }) => (
                  <Route key={to} path={to} element={<Component />} />
                ))}
                <Route path="*" element={<PageNotFound />} />
              </Routes>
            </Suspense>
          </main>
        </div>
      </Router>
    </AuthContext.Provider>
  );
}

export default App;
