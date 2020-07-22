class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  def find_doctor_instance
    Doctor.find(self.doctor_id)
  end

  def find_patient_instance
    Patient.find(self.patient_id)
  end
  def date
    self.appointment_datetime.strftime("%B %d, %Y at %k:%M")
  end
end
