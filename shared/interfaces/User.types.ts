import { IApiResponse } from "./API.types";
/**
 * Basic User Data.
 * Both the client and server will use this interface to represent user data.
 * @property {number} id - The ID of the user
 * @property {string} email - The email of the user
 * @property {string} name - The name of the user
 */
export interface IUser {
  id: number;
  email: string;
  name: string;
  password?: string;
  role?: "user" | "admin" | "moderator";
  createdAt?: Date;
  updatedAt?: Date;
}

/**
 * Request to get a user from the API.
 * All properties are optional as the API will return a user if any of the properties are provided.
 * @property {number} id - The ID of the user
 * @property {string} email - The email of the user
 * @property {string} name - The name of the user
 */
export interface IUserRequest {
  id?: number;
  email?: string;
  name?: string;
}

/**
 * UserData Response.
 * Inherits from {@linkcode IApiResponse}
 * @property {IUser} user - The user that was fetched
 */
export interface IUserResponse extends IApiResponse {
  user?: IUser;
}

// (( Authentication )) --------------------------------
/**
 * User Authentication Request.
 * 
 * Needed for both Login and Register requests.
 * 
 * Inherits from {@linkcode IUserRequest}
 * @prop {string} password - The password of the user
 */
export interface IUserAuthRequest extends IUserRequest {
  password: string;
}

/**
 * Response from the API for an auth request
 * Inherits from {@linkcode IApiResponse}
 * @property {IUser} user - The user that was fetched
 * @property {string} accessToken - The access token for the user
 */
export interface IUserAuthResponse extends IApiResponse {
  user?: IUser;
  accessToken?: string;
}

