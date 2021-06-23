import ImageSlider from "./ImageSlider/ImageSlider";
import { productsLinks } from "../constants/imageLinks";
import Card from "./Card";

export default function Catalogue() {
  const links = Object.entries(productsLinks);
  return (
    <ImageSlider className="gap-2">
      {links.map(([key, url], index) => {
        return (
          <Card
            key={key}
            url={url}
            index={index}
            altText="Product card"
            title="Laptop Lenovo G470"
            originalPrice={100}
            offerPrice={59.9}
            specialPrice={39.9}
            discount={40}
          />
        );
      })}
    </ImageSlider>
  );
}

// TODO: products shown in the first slider (landpage) be specific (recent sale, best selling, etc)
