class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime
      t.references :doctor
      t.references :patient

      t.timestamps
    end
  end
end
