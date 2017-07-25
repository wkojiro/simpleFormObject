class RegistrationsController < ApplicationController
    
    def index
        @users = User.all
    
    end
    
    def new
        @registration_form = RegistrationForm.new
    end
    
    def create
        @registration_form = RegistrationForm.new(registration_form_params)
        if @registration_form.save
            redirect_to registrations_path
        else
          render :new
        end
    end
    
    private
    
    def registration_form_params
      params.require(:registration_form).permit(:name)        
    end
    
end
