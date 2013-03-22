class AdminController < ApplicationController
  
  def new
    @tool = Tool.new
  end

  def index
    @tool = Tool.all
  end

  def edit
     @tool = Tool.find(params[:id])
  end

  def show
     @tool = Tool.find(params[:id])
  end

  def create 
    @tool = Tool.new(params[:tool])

    respond_to do |format|
      if @tool.update_attributes(params[:tool])
        format.html { redirect_to admin_path(@tool), notice: 'Tool was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @tool = Tool.new(params[:id])

    respond_to do |format|
      if @tool.update_attributes(params[:tool])
        format.html { redirect_to admin_path(@tool), notice: 'Tool was successfully updated.' }
      else
        format.html { render action: "new" }
      end
    end
  end

   def destroy
  end

end
