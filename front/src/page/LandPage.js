import React from "react";
import UserService from "../services/users_service";
import Banner from "../shared/Banner";
import Header from "../shared/Header";
import Footer from "../shared/Footer";
import MainContainer from "../shared/UI/MainContainer";
import SectionContainer from "../shared/UI/SectionContainer";
import Catalogue from "../shared/Catalogue";
import Categories from "../shared/Categories";

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
    <MainContainer>
      <Header />
      <SectionContainer>
        <Banner />
        <Categories />
        <Catalogue />
      </SectionContainer>
      <Footer />
    </MainContainer>
  );
}
