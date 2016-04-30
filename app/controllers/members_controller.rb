class MembersController < ApplicationController
  def index
    @members = Member.order("number")
  end

  def search
    @members = Member.search(params[:q])
    # render :text => params
    # render text: params
      render "index"
  end

  def show
    # render  text: params
    @member = Member.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
