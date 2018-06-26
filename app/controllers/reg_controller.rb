class RegController < Devise::RegistrationsController
  def new
    super
  end

  def create
    binding.pry
    # add custom create logic here
  end

  def update
    super
  end

  private

  # Notice the name of the method
  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :chapter_id)
  end
end
