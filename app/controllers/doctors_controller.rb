class DoctorsController < ApplicationController
    before_action :find_self, only: [:show, :edit, :destroy, :update]
    def index
        @doctors = Doctor.all
    end

    def show
    end

private

    def find_self
        @doctor = Doctor.find(params[:id])
    end
    
end
