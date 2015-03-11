class OpportunitiesController < ApplicationController
  before_action :set_opportunity, only: [:show, :update, :destroy]

  # GET /opportunities
  # GET /opportunities.json
  def index
    @opportunities = Opportunity.all

    render json: @opportunities
  end

  # GET /opportunities/1
  # GET /opportunities/1.json
  def show
    render json: @opportunity
  end

  # POST /opportunities
  # POST /opportunities.json
  def create
    @opportunity = Opportunity.new(opportunity_params)

    if @opportunity.save
      render json: @opportunity, status: :created, location: @opportunity
    else
      render json: @opportunity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /opportunities/1
  # PATCH/PUT /opportunities/1.json
  def update
    @opportunity = Opportunity.find(params[:id])

    if @opportunity.update(opportunity_params)
      head :no_content
    else
      render json: @opportunity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /opportunities/1
  # DELETE /opportunities/1.json
  def destroy
    @opportunity.destroy

    head :no_content
  end

  private

    def set_opportunity
      @opportunity = Opportunity.find(params[:id])
    end

    def opportunity_params
      params.require(:opportunity).permit(:title, :type, :description, :setaside, :publishdate, :responseduedate, :status, :buyername, :placeofperform, :primaypoc)
    end
end
