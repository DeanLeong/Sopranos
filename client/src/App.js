import React, { useState, useEffect } from 'react'
import { Switch, Route, useHistory } from 'react-router-dom'
import './App.css';

import Home from './Screens/Home'

import { getAllCharacters, postCharacter } from './Services/characters'


function App() {

  const [characters, setCharacters] = useState([])

  useEffect(() => {
    const fetchCharacters = async () => {
      const characterData = await getAllCharacters()
      setCharacters(characterData)
    }
    fetchCharacters()
  }, [])

  return (
    <div className="App">
      <Switch>
        <Route exact path='/home'>
          <Home characters={characters}/>
        </Route>
      </Switch>
    </div>
  );
}

export default App;
