class LanguagesController < ApplicationController

before_filter :authenticate_user!
  def index
   # @search = language.search(params[:search])
   # @languages = @search.all

    #@q = language.search(params[:q])
    @languages = Language.all
   
  end
  
  def show
    @language = Language.find(params[:id])
  end
  
  def new
    @language = Language.new
  end
  
  def create
    @language = Language.new(params[:language])
    if @language.save
      flash[:notice] = "Successfully created language."
      redirect_to @language
    else
      render :action => 'new'
    end
  end
  
  def edit
    @language = Language.find(params[:id])
  end
  
  def update
    @language = Language.find(params[:id])
    if @language.update_attributes(params[:language])
      flash[:notice] = "Successfully updated language."
      redirect_to @language
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @language = Language.find(params[:id])
    @language.destroy
    flash[:notice] = "Successfully destroyed language."
    redirect_to languages_url
  end
end
