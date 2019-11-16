class StaticPagesController < ApplicationController
    before_action :set_new_lead
    
    def index 
    end

    def page 

        @business = Business.find(params[:business_id])
        @service = @business.services.find(params[:service_id]) 
        @city = @business.cities.find(params[:city_id])
    end 

    private 
    def set_new_lead
        @lead = Lead.new()
    end 
    
end
