class RegistrationsController < Devise::RegistrationsController
  respond_to :json

  def create
    build_resource(sign_up_params)

    if resource.save
      sign_in(resource)
    end

    render_resource(resource)
  end

  def show
    render json: current_user
  end

end
