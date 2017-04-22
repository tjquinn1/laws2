class RepController < ApplicationController

  def index
    @reps = Rep.all
  end

  def show
    @rep = Rep.find(params[:id])
  end

  def new

  end

  def edit
    @rep = Rep.find(params[:id])
  end

  def create
    @rep = Rep.new(params[:rep])

    if @rep.save
      redirect_to @rep
    else
      render 'new'
    end
  end

  def update
    @rep = Rep.find(params[:id])

    if @rep.update(rep_params)
      redirect_to @rep
    else
      render 'edit'
    end
  end

  private
    def rep_params
      params.require(:rep).permit(:firstName, :lastName, :state, :chamber, :party, :distract, :streetAddress, :zipcode, :stateAddress, :city, :dateStart, :dateEnd,
                                  :congStart, :congEnd)
    end
end
