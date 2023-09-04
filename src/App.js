import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import './App.css';
import '../src/static/style.css'
import Home from './pages/Home';
import 'mdb-react-ui-kit/dist/css/mdb.min.css';
import "@fortawesome/fontawesome-free/css/all.min.css";
function App() {
    // Hurray
   // Hurray
   // Hurray
   // Hurray
   // Hurray
   // Hurray
   // Hurray
   // Hurray
   // Hurray
   // Hurray
  return (
    <Router>
      <Routes>
       <Route path = "/" element = {<Home/>} />
      </Routes>
    </Router>
  );
}

export default App
