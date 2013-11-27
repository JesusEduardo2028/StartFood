class SessionsController < Devise::SessionsController

  # GET /resource/sign_in
  def new
    self.resource = resource_class.new(sign_in_params)
    clean_up_passwords(resource)
    respond_to do |format|
      format.html
      format.js {render "devise/sessions/error"}
    end
  end

  # POST /resource/sign_in
  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message(:notice, :signed_in) if is_flashing_format?
    sign_in(resource_name, resource)

    respond_to do |format|
      format.html { redirect_to my_restaurants_path}
      format.js {render "devise/registrations/create"}
    end
  end

  # DELETE /resource/sign_out
  def destroy

    signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
    set_flash_message :notice, :signed_out if signed_out && is_flashing_format?
    respond_to do |format|
      format.html { redirect_to root_url}
      format.js {render "devise/registrations/create"}
    end

  end


end
