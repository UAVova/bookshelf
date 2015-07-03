class RegistrationsController < Devise::RegistrationsController

  def new
    if params[:site].present?
      session.delete("devise.user_attributes")
    end
    super
  end

end 