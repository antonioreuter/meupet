class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(pet_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Seu cadastrado foi efetuado com sucesso.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new'}
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    resond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Cadastro atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  def edit
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user)
  end

end
