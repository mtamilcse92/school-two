class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  # before_action :set_subject, only: [:show, :new, :create, :edit, :update, :destroy]
  def index
    @topics = Topic.all
  end

  def show
  end

  def new
     @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    p @topic
    byebug
    # @topic.subject_id = @subject.id
    if @topic.save
      redirect_to subjects_path
    else
      render :index
    end
  end

  def edit
  end

  def update
    if @topic.update(topic_params)
      redirect_to subjects_path
    else
      render :index
    end
  end

  def destroy
    if @topic.destroy
      redirect_to subjects_path
    end
  end

  private

  def set_topic
      @topic = Topic.find(params[:id])
  end

  # def set_subject
  #     @subject = Subject.find(params[:subject_id])
  # end

  def topic_params
    params.require(:topic).permit(:name, :subject_id)
     # params.require(:topic).permit(:name, :subject_id)
  end
end
