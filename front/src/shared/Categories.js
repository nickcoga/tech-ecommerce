import ImageSlider from "./ImageSlider/ImageSlider";
import { categoriesLinks } from "../constants/imageLinks";

import SimpleCard from "./SimpleCard";

export default function Categories() {
  const links = Object.entries(categoriesLinks); // TODO: change variable name
  return (
    <ImageSlider className="gap-1 my-8">
      {links.map(([key, url], index) => {
        return (
          <SimpleCard
            key={key}
            url={url}
            index={index}
            altText="hot category"
          />
        );
      })}
    </ImageSlider>
  );
}
