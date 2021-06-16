import { useState } from "react";
import Icons from "../UI/Icons";
import "../Carousel/styles.css";

const images = [
  "https://placeimg.com/1403/325/tech",
  "https://placeimg.com/1403/325/nature",
  "https://placeimg.com/1403/325/people",
  "https://placeimg.com/1403/325/animals",
];

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
          alt={`Carousel ${index}`}
        />
      ))}
      <div className="styled_container_icon right">
        <Icons className="next" onClick={nextPhoto} type="next" />
      </div>
    </div>
  );
}

export default Carousel;
