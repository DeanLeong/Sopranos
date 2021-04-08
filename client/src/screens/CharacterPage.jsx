import React, { useEffect, useState } from 'react';
import { useParams, Link } from 'react-router-dom'

function CharacterPage({ characters }) {
  const [character, setCharacter] = useState({})

  const { id } = useParams()

 

  return (
    <div>
      
    </div>
  );
}

export default CharacterPage;

// {
//   characters.map(character => (
//     <div>
//       <img src={character.imgurl} className="char-img" alt="character portrait"></img>
//     </div>
//   ))
// }

// useEffect(() => {
//   if (characters.length) {
//     const getCharacter = characters.find((char) => char.id === Number(id))
//     setCharacter(getCharacter)
//   }
// }, [id, characters])