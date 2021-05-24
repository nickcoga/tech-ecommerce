import { apiFetch, BASE_URL } from "./api_fetch.js";

function UserService() {
  if (!UserService.instance) {
    UserService.instance = this;
  }
  return UserService.instance;
}

UserService.prototype.list = () =>
  apiFetch(`${BASE_URL}/users`, {
    method: "GET",
  });

export default UserService;
