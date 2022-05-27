class UsersController < ApplicationController
    def show
        @users = current_user.created_events.all
        
    end
end
