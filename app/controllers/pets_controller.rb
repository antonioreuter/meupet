class PetsController < ApplicationController

  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def my_pets
    @pets = Pet.find_by_owner(current_user)
  end

  def my_adopted_pets
    @pets = Pet.find_by_adopted_by(current_user)
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)

    respond_to do |format|
      if @pet.save
        format.html { redirect_to @pet, notice: 'Seu pet foi cadastrado com sucesso.' }
        format.json { render action: 'show', status: :created, location: @pet }
      else
        format.html { render action: 'new'}
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    resond_to do |format|
      if @pet.update(pet_params)
        format.html { redirect_to @pet, notice: 'Os dados do seu pet foram atualizados com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pet.destroy

    respond_to do |format|
      format.html { redirect_to pets_url }
      format.json { head :no_content }
    end
  end

  def edit
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet)
  end

end
