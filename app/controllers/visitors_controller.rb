class VisitorsController < ApplicationController
    def new
        
        @visitor = Visitor.new
        @owner = Owner.new
        Rails.logger.debug 'DEBUG: Owner name is ' + @owner.name

        # This code is implicit called, but we can make it explicit!
        # render 'visitors/new'
        
        # To specify a specific layout...
        #render 'visitors/new', :layout => 'landing'

        # Displaying  messages...
        #flash[:notice] = 'Welcome!'
        #flash.now[:alert] = 'My birthday is soon.'

    end 
    
    def create
        
        @visitor = Visitor.new(secure_params)
        if @visitor.valid?
                @visitor.subscribe
                flash[:notice] =  "Signed up as #{@visitor.email}"
                redirect_to root_path
        else
            render :new
        end  
    end

    private
    
    def secure_params
        params.require(:visitor).permit(:email)
    end
end
