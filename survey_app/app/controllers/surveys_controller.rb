class SurveysController < ApplicationController
 
  def index
    @surveys = Survey.all
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(parameter)
    @survey.update_attributes(parameter)
    redirect_to action: 'index'
  end

  def show
    @survey = Survey.find(params[:id])
    @question = @survey.questions
    p @question
  end

  def edit
    @survey = Survey.find(params[:id])
  end

  def update
    @survey = Survey.find(params[:id])
    @survey.update_attributes(parameter)
    redirect_to survey_path
  end

  def destroy
    @survey = Survey.find(params[:id])
    @survey.destroy
    redirect_to action: 'index'
  end

  def parameter
    params.require(:survey).permit(:name, :survey_type, :conducted_on)
  end
end
