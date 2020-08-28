class VisitorsController < ApplicationController
    def new
        @owner = Owner.new

        # This code is implicit called, but we can make it explicit!
        # render 'visitors/new'

    end        
end
