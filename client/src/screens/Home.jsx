import React from 'react';
import { Link, Route } from 'react-router-dom'

function Home(props) {
  return (
    <div>
      <h1>Sopranos Stans Only</h1>
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
  );
}

export default Home;