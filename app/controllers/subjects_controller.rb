class SubjectsController < ApplicationController
   before_action :set_subject, only: [:show, :edit, :update, :destroy]
  def index
    @subjects = Subject.all
    @subject = Subject.new
  end

  def show
  end

  def new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to subjects_path
    else
      render :index
    end
  end

  def edit
  end

  def update
    if @subject.update(subject_params)
      redirect_to subjects_path
    else
      render :index
    end
  end

  def destroy
    if @subject.destroy
      redirect_to subjects_path
    end
  end

  private

  def set_subject
      @subject = Subject.find(params[:id])
  end

  def subject_params
     params.require(:subject).permit(:name)
  end
end
