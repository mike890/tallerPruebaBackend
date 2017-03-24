class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def x
  end
  def save_user
    User.new(name: params[:name], email: params[:email], age: params[:age]).save
    redirect_to pages_x_path, notice: 'el usuario se a creado correctamente'
  end
end
