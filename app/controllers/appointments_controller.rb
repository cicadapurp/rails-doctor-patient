class AppointmentsController < ApplicationController
  before_action :set_doctor

  def index
    @physician = @doctor.appointments.where(appoint: 'physician')

  end

  def new
    @patients = Patient.all - @doctor.patients
    @appointment = @doctor.appointments.new
  end

  def create
    @appointment = @doctor.appointments.new(appointment_params)
    if @appointment.save
      redirect_to doctor_appointments_path(@doctor)
    else
      render :new

    end

  end

  private
  def set_doctor
    @doctor = Doctor.find(params[:doctor_id])
  end
  def appointment_params
    params.require(:appointment).permit(:appoint, :patient_id)

  end
end
