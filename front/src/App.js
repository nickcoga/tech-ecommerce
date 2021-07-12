import { BrowserRouter as Router, Switch, Route } from "react-router-dom";
import './styles/app.css'
import LandPage from "./page/LandPage";
import Cart from "./page/Cart";
import PartnershipDiscounts from "./page/PartnershipDiscounts";
import SpecialDiscounts from "./page/SpecialDiscounts";
import ProductDetails from "./page/ProductDetails";

export default function App() {
  return (
    <Router>
      <Switch>
        <Route exact path="/" component={LandPage} />
        <Route path="/cart" component={Cart} />
        <Route path="/partnership-discounts" component={PartnershipDiscounts} />
        <Route path="/products/:id" component={ProductDetails} />
        <Route path="/special-offers/:id" component={SpecialDiscounts} />
      </Switch>
    </Router>
  );
}
