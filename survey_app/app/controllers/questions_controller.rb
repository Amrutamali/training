class QuestionsController < ApplicationController

  def index
    @survey = Survey.find(params[:survey_id])
    @questions = @survey.questions
  end

  def new
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.build
    4.times do
      @option = @question.options.build
    end
  end

  def create
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.new(parameter)
    @question.save
    redirect_to action: 'index'
  end

  def edit
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.find(params[:id])

  end

  def update
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.find(params[:id])
    @question.update_attributes(parameter)
    redirect_to  survey_questions_path(@survey, @question)
  end

  def show
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.find(params[:id])
    @options = @question.options
 end

  def destroy
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.find(params[:id])
    @question.destroy
    redirect_to action: 'index'
  end

  private
  def parameter
    params.require(:question).permit(:description, options_attributes: [:id, :description])
  end

end
