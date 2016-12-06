class SurveysController < ApplicationController
  before_action :get_survey, only: [:show, :edit, :update]

  def new
    @survey = Survey.new
  end

  def create
    if survey = Survey.create(survey_params)
      flash[:success] = "Survey Successfully Created"
      redirect_to survey
    else
      flash.now[:error] = "Please Correct Errors to Porceed"
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def index
    @surveys = Survey.all
  end

  def destroy
  end

  private

    def get_survey
      @survey = Survey.find_by_id(params[:id])
    end

    def survey_params
      params.require(:survey).permit(:name, :description)
    end

end
