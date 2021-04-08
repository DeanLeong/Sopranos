import React, { useState, useEffect } from 'react'
import './App.css';
import { getAllCharacters } from "./services/characters"


function App(props) {

  const [characters, setCharacters] = useState([])

  useEffect(() => {
    const fetchCharacters = async () => {
      const characterData = await getAllCharacters()
      setCharacters(characterData)
    }
    fetchCharacters()
  }, [])

  console.log(characters)

  return (
    <div className="App">
        <h1>Hello</h1>
    </div>
  );
}

export default App;
