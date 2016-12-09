class SubjectsController < ApplicationController
   before_action :set_subject, only: [:show, :edit, :update, :destroy]
  def index
    @subjects = Subject.all
    @subject = Subject.new
    @topics = Topic.new
    render :index_sample
  end

  def show
  end

  def new
    @subject = Subject.new
    @subject.topics.build
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
    @subject.topics.build
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
    byebug
     params.require(:subject).permit(:name, topic_attributes: [:name,:id])
  end
end
