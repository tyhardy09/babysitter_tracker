class BabysittersController < ApplicationController
  def index
    @babysitters = Babysitter.all
  end

  def show
    @babysitter = Babysitter.find(params[:id])
  end

  def new
    @babysitter = Babysitter.new
  end

  def create
    @babysitter = Babysitter.new
    @babysitter.notes = params[:notes]
    @babysitter.picture = params[:picture]
    @babysitter.age = params[:age]
    @babysitter.rate = params[:rate]
    @babysitter.email = params[:email]
    @babysitter.phone = params[:phone]
    @babysitter.name = params[:name]

    if @babysitter.save
      redirect_to "/babysitters", :notice => "Babysitter created successfully."
    else
      render 'new'
    end
  end

  def edit
    @babysitter = Babysitter.find(params[:id])
  end

  def update
    @babysitter = Babysitter.find(params[:id])

    @babysitter.notes = params[:notes]
    @babysitter.picture = params[:picture]
    @babysitter.age = params[:age]
    @babysitter.rate = params[:rate]
    @babysitter.email = params[:email]
    @babysitter.phone = params[:phone]
    @babysitter.name = params[:name]

    if @babysitter.save
      redirect_to "/babysitters", :notice => "Babysitter updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @babysitter = Babysitter.find(params[:id])

    @babysitter.destroy

    redirect_to "/babysitters", :notice => "Babysitter deleted."
  end
end
