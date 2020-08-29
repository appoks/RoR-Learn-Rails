class VisitorsController < ApplicationController
    def new
        
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
end
