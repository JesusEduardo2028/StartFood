class RegistrationsController < Devise::RegistrationsController

  def create
    build_resource(sign_up_params)
    @confirmation = false

    if resource.save


      if resource.active_for_authentication?
        @confirmation = true

        set_flash_message :notice, :signed_up if is_navigational_format?
        sign_up(resource_name, resource)

        respond_to do |format|
          format.html { redirect_to after_sign_up_path_for(resource)}
          format.js {render "devise/registrations/create"}
        end
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_navigational_format?
        expire_session_data_after_sign_in!

        respond_to do |format|
          format.html { respond_with resource, :location => after_sign_up_path_for(resource)}
          format.js {render "devise/registrations/create"}
        end
      end
    else

      clean_up_passwords resource

      respond_to do |format|
        format.html { respond_with resource}
        format.js {render "devise/registrations/create"}
      end
    end
  end

  # Signs in a user on sign up. You can overwrite this method in your own
  # RegistrationsController.
  def sign_up(resource_name, resource)
    sign_in(resource_name, resource)
  end


end