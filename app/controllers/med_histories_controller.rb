class MedHistoriesController < ApplicationController
  before_action :find_patient
  before_action :set_med_history, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /med_histories
  # GET /med_histories.json
  def index
    @med_histories = MedHistory.all
    @user = current_user
  end

  # GET /med_histories/1
  # GET /med_histories/1.json
  def show; end

  # GET /med_histories/new
  def new
    @med_history = MedHistory.new
  end

  # GET /med_histories/1/edit
  def edit; end

  # POST /med_histories
  # POST /med_histories.json
  def create
    @med_history = @patient.med_histories.new(med_history_params)

    respond_to do |format|
      if @med_history.save
        # format.html { redirect_to @med_history, notice: 'Med history was successfully created.' }
        # byebug
        format.html { redirect_to edit_patient_path(@med_history.patient.id), notice: 'Med history was successfully created.' }

        format.json { render :show, status: :created, location: @med_history }
      else
        format.html { render :new }
        format.json { render json: @med_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /med_histories/1
  # PATCH/PUT /med_histories/1.json
  def update
    respond_to do |format|
      if @med_history.update(med_history_params)
        format.html { redirect_to @med_history, notice: 'Med history was successfully updated.' }
        format.json { render :show, status: :ok, location: @med_history }
      else
        format.html { render :edit }
        format.json { render json: @med_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /med_histories/1
  # DELETE /med_histories/1.json
  def destroy
    @med_history.destroy
    respond_to do |format|
      format.html { redirect_to med_histories_url, notice: 'Med history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def find_patient
    # /../../.......png
    # params[:format] png

    # /../../.... .1
    # params[:format] 1
    @patient = params[:format] ? Patient.find(params[:format]) : Patient.find(params[:patient_id])
    # @patient = Patient.find(params[:format])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_med_history
    @med_history = MedHistory.find(params[:id])
    # @patient = Patient.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def med_history_params
    params.require(:med_history).permit(:q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10, :q11, :q12,
                                        :t1, :t2, :t3, :t4, :t5, :t6, :t7, :t8,
                                        :t9, :t10, :t11, :t12, :t13, :t14, :t15, :t16,
                                        :t17, :t18, :t19, :t20, :t21, :t22, :t23, :t24,
                                        :t25, :t26, :t27, :t28, :t29, :t30, :t31, :t32,
                                        :patient_id)
  end
end
