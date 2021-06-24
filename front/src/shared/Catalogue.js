import ImageSlider from "./ImageSlider/ImageSlider";
import { productsDetails } from "../constants/productDetails";
import Card from "./Card";

export default function Catalogue() {
  const products = Object.entries(productsDetails);

  return (
    <ImageSlider className="gap-2">
      {products.map(
        (
          [
            key,
            { name, link, originalPrice, offerPrice, specialPrice, discount },
          ],
          index
        ) => {
          return (
            <Card
              key={key}
              url={link}
              index={index}
              altText="Product card"
              title={name}
              originalPrice={originalPrice}
              offerPrice={offerPrice}
              specialPrice={specialPrice}
              discount={discount}
            />
          );
        }
      )}
    </ImageSlider>
  );
}

// TODO: products shown in the first slider (landpage) be specific (recent sale, best selling, etc)
