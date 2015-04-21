class ListsController < ApplicationController
  #this line prevents access to any of the list urls or actions
  before_action :authenticate_user!
  before_action :set_list, only: [:show, :edit, :update, :destroy]
  
  respond_to :html

  def index
    @lists = current_user.lists
    respond_with(@lists)
  end

  def show
    #TODO : instead of allowing another signed-in user to type
    #URL and view another user's lists, it throws an error b/c list doesn't exist
    #how to use the error to show msg and redirect?
    #remember set_list is called first from above
    #@list.user_id may be useful here
    respond_with(@list)
    
  end

  def new
    @list = List.new
    respond_with(@list)
  end

  def edit
    #remember set_list is called first from above
  end

  def create
    @list = List.new(list_params)
    @list.save
    #respond_with(@list)
    redirect_to action: :index
  end

  def update
    @list.update(list_params)
    respond_with(@list)
  end

  def destroy
    @list.destroy
    respond_with(@list)
  end

  private

    def set_list
      #@list = current_user.lists.find(params[:id])
      @list = current_user.lists.find_by_id(params[:id])
    end

    def list_params
      params.require(:list).permit(:title, :description, :user_id)
    end
end
