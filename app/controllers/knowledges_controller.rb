class KnowledgesController < ApplicationController
before_filter :authenticate_user!
  def index
   # @search = knowledge.search(params[:search])
   # @knowledges = @search.all

    #@q = knowledge.search(params[:q])
    @knowledges = Knowledge.all
    @categories =Knowledge.first.categories.where("name IS NOT  NULL").select("distinct name")
     @languages =Knowledge.first.languages.all.compact
     @frameworks =Knowledge.first.frameworks.all.compact
  end
  
  def show
    @knowledge = Knowledge.find(params[:id])
  end
  
  def new
    @knowledge = Knowledge.new
  end
  
  def create
    @knowledge = Knowledge.new(params[:knowledge])
    if @knowledge.save
      flash[:notice] = "Successfully created knowledge."
      redirect_to @knowledge
    else
      render :action => 'new'
    end
  end
  
  def edit
    @knowledge = Knowledge.find(params[:id])
  end
  
  def update
    @knowledge = Knowledge.find(params[:id])
    if @knowledge.update_attributes(params[:knowledge])
      flash[:notice] = "Successfully updated knowledge."
      redirect_to @knowledge
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @knowledge = Knowledge.find(params[:id])
    @knowledge.destroy
    flash[:notice] = "Successfully destroyed knowledge."
    redirect_to knowledges_url
  end
end
