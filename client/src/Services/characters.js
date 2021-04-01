import api from './apiConfig'

export const getAllCharacters = async () => {
  const resp = await api.get(`/characters`)
  return resp.data
}

export const getOneCharacter = async (id) => {
  const resp = await api.get(`/characters/${id}`)
  return resp.data
}

export const postCharacter = async (characterData) => {
  const resp = await api.post(`/characters`, { character: characterData })
  return resp.data
}