class AppointmentsController < ApplicationController
    before_action :find_self, only: [:show, :edit, :destroy, :update]
    def show
    end

    private
    def find_self
        @appointment = Appointment.find(params[:id])
    end

end
