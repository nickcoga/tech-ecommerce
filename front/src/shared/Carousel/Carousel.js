import { useState } from "react";
import useInterval from "../../helpers/useInterval";
import Icons from "../UI/Icons";
import "../Carousel/styles.css";

const images = [
  "https://placeimg.com/1403/325/tech",
  "https://placeimg.com/1403/325/nature",
  "https://placeimg.com/1403/325/people",
  "https://placeimg.com/1403/325/animals",
];

function Carousel({ photos = images }) {
  const [activeIndex, setActiveIndex] = useState(0);

  const previousPhoto = () => {
    const isFirstIndexActive = activeIndex === 0;
    setActiveIndex(isFirstIndexActive ? photos.length - 1 : activeIndex - 1)
  };

  const nextPhoto = () => {
    const isLastIndexActive = activeIndex === photos.length - 1;
    setActiveIndex(isLastIndexActive ? 0 : activeIndex + 1);
  };

  useInterval(() => {
    nextPhoto()
  }, 5000)

  return (
    <div className="styled_container">
      <div className="styled_container_icon left">
        <Icons className="prev" onClick={previousPhoto} type="previous" />
      </div>
      {photos.map((image, index) => (
        <img
          key={index}
          src={image}
          className={index === activeIndex ? 'active' : ''}
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
