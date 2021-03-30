class CharactersController < ApplicationController
  before_action :set_character, only: :show
  before_action :authorize_request, only: [:create, :update, :destroy]
  before_action :set_user_character, only: [:update, :destroy]

  #Get /characters
  def index
    @characters = Character.all

    render json: @characters, include: :names, :biography, :quotes, :imgurl, status: :ok
  end
  
  #Get /characters/1
  def show
    render json: @character, include: :names, :biography, :quotes, :imgurl, status: :ok
  end

  def create
    @character = Character.new(character_params)
    @character.user = @current_user

    if @character.save
      render json: @character, status: :created
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  def update
    if @character.update(character_params)
      render json: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @character.destroy
  end

  private

  def set_character
    @character = Character.find(params[:id])
  end

  def set_user_character
    @character = @current_user.character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:name, :imgurl, :biography, :quotes)
  end
end
