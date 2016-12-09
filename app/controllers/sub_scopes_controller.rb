class SubScopesController < ApplicationController
  def index
    @sub_scopes = SubScope.all
    p @sub_scopes
    @sub_scope = SubScope.new
    # byebug
    @topic = params[:topic]
    # p @topic
  end

  def show
  end

  def new
    @sub_scope = SubScope.new
    @topic = params[:topic]
  end

  def create
    @sub_scope = SubScope.new(sub_scope_params)
    if @sub_scope.save
      redirect_to sub_scopes_path
    else
      render :index
    end
  end

  def edit
  end

  def update
    if @sub_scope.update(sub_scope_params)
      redirect_to sub_scopes_path
    else
      render :index
    end
  end

  def destroy
    if @sub_scope.destroy
      redirect_to sub_scopes_path
    end
  end

  private

  def set_sub_scope
      @sub_scope = SubScope.find(params[:id])
  end

  def sub_scope_params
    byebug
     params.require(:sub_scope).permit(:name, :key_question, :core_idea, :recommended_grade , :topic_id)
  end
end
