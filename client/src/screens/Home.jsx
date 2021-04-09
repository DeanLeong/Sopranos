import React from 'react';
import { Link, Route } from 'react-router-dom'
import './Home.css'

function Home(props) {
  return (
    <div className="home-container">
      <h1 className="site-h1">Sopranos Stans Only</h1>
      <div className="char-container">
      {
        props.characters.map(character => (
          <div className="char" key={character.id}>
            <Link to={`characters/${character.id}`} className='char-link'>
            <img src={character.imgurl} className="char-img" alt="character portrait"></img>
            <p className="char-name">{character.name}</p>
            </Link>
          </div>
        ))
        }
      </div>
      <button>Add a Character</button>
    </div>
  );
}

export default Home;