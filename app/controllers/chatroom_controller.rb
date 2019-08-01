class ChatroomController < ApplicationController

    def index 
        if !logged_in? 
            redirect_to login_path
        end
        @messages = Message.custom_display
        @message = Message.new
        @users = User.all
    end

end