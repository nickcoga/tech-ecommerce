import Carousel from "./Carousel/Carousel";
import FlexContainer from "./UI/FlexContainer";

export default function Banner() {
  return (
    <FlexContainer className="flex-col items-center">
      <div className="mb-2">
        <img src="https://via.placeholder.com/1180x92" alt="An offer" />
      </div>

      <Carousel />
    </FlexContainer>
  );
}
