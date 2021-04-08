import React, { useEffect, useState } from 'react';
import { useParams, Link } from 'react-router-dom'
import { getOneCharacter } from '../services/characters'
import DOMPurify from 'dompurify';

function CharacterPage({ characters }) {
  const [character, setCharacter] = useState({})
  const { id } = useParams()
  const content = DOMPurify.sanitize(character?.imgurl)

  useEffect(() => {
    const fetchOneCharacter = async () => {
      const characterData = await getOneCharacter(id)
      setCharacter(characterData)
    }
    fetchOneCharacter()
  }, [id])

  return (
    <div>
      <h2>{character?.name}</h2>
      {
        character?.name
          ?
          <div>
            {/* <img>{character?.imgurl}</img> */}
            <div className="bio">
              {character?.biography}
            </div>
            <div>
              {character?.quotes}
            </div>
          </div>
          : null
      }
    </div>
  );
}

export default CharacterPage;



// probably just need to download the images and host them on gith, put in an asset folder
