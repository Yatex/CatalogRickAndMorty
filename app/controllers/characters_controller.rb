class CharactersController < ApplicationController
  def index
    @characters = Character.all.paginate(page: params[:page], per_page: 5)
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(name: "...", type: "...", url: "...", image: "...", status: "...", species: "...", gender: "...")

    if @character.save
      redirect_to @character
    else
      render :new, status: :unprocessable_entity
    end
  end

  def refresh
    helpers.create_characters("https://rickandmortyapi.com/api/character")
  end

  def search
    @search_characters = Character.where("name LIKE ? OR species LIKE ? ","%" + params[:q].to_s + "%","%" + params[:q].to_s + "%").paginate(page: params[:page], per_page: 5)
  end
end
