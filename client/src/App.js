import React, { useState, useEffect } from 'react'
import { Switch, Route, useHistory } from 'react-router-dom'
import './App.css';

import Home from './Screens/Home'

function App() {
  return (
    <div className="App">
      <Switch>
        <Route exact path='/home'>
          <Home />
        </Route>
      </Switch>
    </div>
  );
}

export default App;
