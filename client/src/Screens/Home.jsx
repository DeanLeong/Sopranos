import React from 'react';
import { Link } from 'react-router-dom'


function Home(props) {

  console.log(props)

  return (
    <div className="home-container">
      <h1>The Cast</h1>
       <div className="character-container">
        {
         props.characters.map(character => (
            <div className="char" key={character.id}>
              <Link to={`/characters/${character.id}`} className="char-link">
               <img src={character.imgurl} className="char-img" alt="characters"/>
               <p className="char-name">{character.name}</p></Link>
           </div>
         ))
        }
    </div>
    </div>
  );
}

export default Home;

// {
//   props.characters.map(character =>
//     <div className="char" key={character.id}>
//       {/* <img src={character.imgurl} className="char-img" alt="character" /> */}
//       <p>{character.name}</p>
//     </div>
//   )
// }



//why is it looking for 3001 instead of 3000?