class PatientsController < ApplicationController
    before_action :find_self, only: [:show, :edit, :destroy, :update]
    def index
        @patients = Patient.all
    end

    def show
    end

private

    def find_self
        @patient = Patient.find(params[:id])
    end
    
end
