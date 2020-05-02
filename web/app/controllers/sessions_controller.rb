class SessionsController < ApplicationController
  def new
    @session = Session.new
  end

  def create
    session[:current_user_id] = '00000000-0000-0000-0000-000000000000'
    redirect_to action: :new
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to action: :new
  end

  private

  def session_params
    params.require(:session).permit(:username, :password)
  end
end
