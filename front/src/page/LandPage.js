import React, { Fragment } from "react";
import UserService from "../services/users_service";

export default function LandPage() {
  React.useEffect(() => {
    async function fetchUsers() {
      const usersService = new UserService();
      const users = await usersService.list();
      console.log(users);
    }
    fetchUsers();
  }, []);

  // const getData = async() => {
  //   const data = await fetch(`${}`)
  // }

  return (
    <Fragment>
      <div>Hola soy LandPage</div>
    </Fragment>
  );
}
