class UsersController < ApplicationController

    def edit
        @user = current_student || current_teacher
    end

    def update
        @user = current_student || current_teacher
        @user.update_attributes(user_params)
        redirect_to (current_student ? appointments_path() : lessons_path())
    end

    private

    def user_params
        params.require(current_student ? :student : :teacher).permit(:phone, :address, :address_2, :city, :state, :zipcode, :email, :password, :password_confirmation)
    end

end