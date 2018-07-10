class HomeController < ApplicationController
  before_action :authenticate_user!

  def index; end

  def chart
    @patients = Patient.all
    @patient = Patient.new
    @user = current_user
  end

  def new; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_patient
    @patient = Patient.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def patient_params
    params.require(:patient).permit(:f_name, :l_name, :gender, :birth_date, :address, :apt_suite, :city, :state, :zip, :phone, :email)
  end
end
