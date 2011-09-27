# coding: utf-8
class SessionsController < ApplicationController
  def new
  end

  def create
    if user = User.find_by_email_and_password(params[:email], params[:password])
      session[:user_id] = user.id
      redirect_to session[:last_path], :notice => "Bem vindo!"
    else
      redirect_to new_session_path, :alert => "Email e/ou senha inválidos"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path, :notice => "Volte sempre!"
  end
end
