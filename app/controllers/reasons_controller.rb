class ReasonsController < ApplicationController

  def intro
    @reasons = Reason.all

    render("reasons/intro.html.erb")
  end

  def index
    @reasons = Reason.all

    render("reasons/index.html.erb")
  end

  def show
    @reasons = Reason.all
    @reason = Reason.find(params[:id])

    render("reasons/show.html.erb")
  end

  def new
    @reason = Reason.new

    render("reasons/new.html.erb")
  end

  def create
    @reason = Reason.new

    @reason.caption = params[:caption]
    @reason.photo = params[:photo]

    save_status = @reason.save

    if save_status == true
      redirect_to("/reasons/#{@reason.id}", :notice => "Reason created successfully.")
    else
      render("reasons/new.html.erb")
    end
  end

  def edit
    @reason = Reason.find(params[:id])

    render("reasons/edit.html.erb")
  end

  def update
    @reason = Reason.find(params[:id])

    @reason.caption = params[:caption]
    @reason.photo = params[:photo]

    save_status = @reason.save

    if save_status == true
      redirect_to("/reasons/#{@reason.id}", :notice => "Reason updated successfully.")
    else
      render("reasons/edit.html.erb")
    end
  end

  def destroy
    @reason = Reason.find(params[:id])

    @reason.destroy

    if URI(request.referer).path == "/reasons/#{@reason.id}"
      redirect_to("/", :notice => "Reason deleted.")
    else
      redirect_to(:back, :notice => "Reason deleted.")
    end
  end
end
