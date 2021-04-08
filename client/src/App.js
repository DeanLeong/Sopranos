import React, { useState, useEffect } from 'react'
import './App.css';
import { getAllCharacters, getOneCharacter } from "./services/characters"
import { Link, Route, useParams } from 'react-router-dom'

import CharacterPage from './screens/CharacterPage'
import Home from './screens/Home'


function App(props) {

  const [characters, setCharacters] = useState([])
  const { id } = useParams()

  useEffect(() => {
    const fetchCharacters = async () => {
      const characterData = await getAllCharacters()
      setCharacters(characterData)
    }
    fetchCharacters()
  }, [])

  useEffect(() => {
    const fetchOneCharacter = async () => {
      const characterData = await getOneCharacter(id)
      setCharacters(characterData)
    }
    fetchOneCharacter()
  }, [id])

  console.log(characters)

  return (
    <div className="App">
      <Route exact path={`/home`}>
        <Home characters={characters}/>
      </Route>

      <Route exact path={`/characters/:id`}>
        <CharacterPage characters={characters}/>
      </Route>
    </div>
  );
}

export default App;
