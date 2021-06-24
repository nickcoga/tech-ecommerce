export default function SimpleCard({ url, index, altText }) {
  return (
    <div className="flex-none">
      <img src={url} alt={`${altText} ${index}`}></img>
    </div>
  );
}
