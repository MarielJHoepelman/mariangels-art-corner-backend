class AccountsController < ActionController::Base
  before_action :authenticate_user!
  respond_to :json

  def show
    render json: current_user
  end

end
