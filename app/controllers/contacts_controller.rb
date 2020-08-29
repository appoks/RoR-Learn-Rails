class ContactsController < ApplicationController
    def process_form

        # Console Log already show the params... 
        # Rails.logger.debug "DEBUG: params are #{params.inspect}"

        if params[:name].blank?
            raise 'Name is blank!'
            flash[:notice] = "Invalid!"
        end

        flash[:notice] = "Received request from #{params[:name]}"
        redirect_to root_path
    end
end