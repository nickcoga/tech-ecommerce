import { BrowserRouter as Router, Switch, Route } from "react-router-dom";
import './styles/app.css'
import LandPage from "./page/LandPage";

export default function App() {
  return (
    <Router>
      <Switch>
        <Route exact path="/" component={LandPage} />
      </Switch>
    </Router>
  );
}
