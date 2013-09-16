class RegistrationsController < Devise::RegistrationsController
  def new
    return redirect_to root_path if User.count > 0
    super
  end

  def create
    return redirect_to root_path if User.count > 0
    super
  end
end