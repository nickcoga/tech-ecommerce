import { useState } from "react";
import useInterval from "../../helpers/useInterval";
import Icons from "../UI/Icons";
import "../Carousel/styles.css";
import { imagesCarosuel } from "../../constants/imagesCarosuel";

function Carousel({ photos = imagesCarosuel }) {
  const [activeIndex, setActiveIndex] = useState(0);

  const previousPhoto = () => {
    const isFirstIndexActive = activeIndex === 0;
    setActiveIndex(isFirstIndexActive ? photos.length - 1 : activeIndex - 1);
  };

  const nextPhoto = () => {
    const isLastIndexActive = activeIndex === photos.length - 1;
    setActiveIndex(isLastIndexActive ? 0 : activeIndex + 1);
  };

  useInterval(() => {
    nextPhoto();
  }, 5000);

  return (
    <div className="styled_container">
      <div className="styled_container_icon left">
        <Icons className="prev" onClick={previousPhoto} type="previous" />
      </div>
      {photos.map((image, index) => (
        <img
          key={index}
          src={image.url}
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


// {photos.map((photo, index) => (
//   <Link
//     to={`/special-offers/:${photo.id}`}
//     className={index === activeIndex ? "active" : ""}
//   >
//     <img key={photo.id} src={photo.url} alt={`Carousel ${index}`} />
//   </Link>
// ))}

// TODO: use Link for the Carousel images