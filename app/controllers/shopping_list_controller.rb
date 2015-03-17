class Shopping_ListController < ApplicationController
  skip_before_action :require_user, only: [:index, :show]
  
  def index
    @shopping_list = Shopping_list.all
  end

  def show
  @shopping_list = Shopping_list.find_by(id: params["id"])
  end

  def new
    @shopping_list = Shopping_list.new
  end

  def create
    shopping_list_params = params.require(:shopping_list).permit!
    @shopping_list = Shopping_list.create(shopping_list_params)
    if @shopping_list.valid?
      redirect_to shopping_lists_path, notice: "New Shopping List Added"
    else
      render "new"
    end
  end

  def edit
    @shopping_list = Shopping_list.find_by(id: params["id"])

  end

  def update
    shopping_list_params = params.require(:shopping_list).permit(:shopping_list_name)
    @shopping_list = Shopping_list.find_by(id: params["id"])
    @shopping_list.update(shopping_list_params)
    if @shopping_list.valid?
      redirect_to shopping_list_path
    else
      render text: "Could not update"
    end
  end

  def destroy
    @shopping_list = Shopping_list.find(params[:id])
    @shopping_list.destroy
    redirect_to shopping_list_path
  end

end