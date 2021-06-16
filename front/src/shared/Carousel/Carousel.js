import { useState } from "react";
import Icons from "../UI/Icons";
import "../Carousel/styles.css";

const images = [
  "https://dynamic-yield.linio.com//api/scripts/8767678/images/1b62f8e67f6c9__CMR-Days_BBE5_onsite.jpg",
  "https://i.linio.com/cms/698b8718-ccd9-11eb-812f-ee2255d3cf9f.webp",
  "https://dynamic-yield.linio.com//api/scripts/8767678/images/368ecd12a3404__CMR-Days_BBE2_onsite.jpg",
  "https://dynamic-yield.linio.com//api/scripts/8767678/images/1a38e144de142__CMR-Days_BBE3_onsite.jpg",
]; // TODO: change these

function Carousel({ photos = images }) {
  const [photosList, setPhotosList] = useState(photos);

  const previousPhoto = () => {
    setPhotosList([
      photosList[photosList.length - 1],
      ...photosList.splice(0, photosList.length - 1),
    ]);
  };

  const nextPhoto = () => {
    setPhotosList([...photosList.splice(1), photosList[0]]);
  };

  return (
    <div className="styled_container">
      <div className="styled_container_icon left">
        <Icons className="prev" onClick={previousPhoto} type="previous" />
      </div>
      {photosList.map((image, index) => (
        <img
          className={index === 1 ? "active" : ""}
          key={index}
          src={image}
          alt={`Carousel Image ${index}`}
        />
      ))}
      <div className="styled_container_icon right">
        <Icons className="next" onClick={nextPhoto} type="next" />
      </div>
    </div>
  );
}

export default Carousel;
