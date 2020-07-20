class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  def readable_datetime
    date_str = self.appointment_datetime.strftime('%B %d, %Y')
    time_str = self.appointment_datetime.strftime("%H:%M")

    "#{date_str} at #{time_str}"
  end
end
