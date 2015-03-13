class OpportunitiesController < ApplicationController
  before_action :set_opportunity, only: [:publish, :show, :update, :destroy]

  # GET /opportunities
  # GET /opportunities.json
  def index
    @opportunities = Opportunity.all

    render json: @opportunities
  end

  # GET /opportunities
  # GET /opportunities.json
  def listCon
    @opportunities = Opportunity.where("status = ?", "Publish")
    render json: @opportunities
  end

  # GET /opportunities/1
  # GET /opportunities/1.json
  def show
    render json: @opportunity
  end

  # GET /opportunities/1
  # GET /opportunities/1.json
  def publish
    @opportunity.status = "Publish"
    @opportunity.publishdate = Time.new
    if @opportunity.save
      render json: @opportunity, status: :created, location: @opportunity
    else
      render json: @opportunity.errors, status: :unprocessable_entity
    end
  end


  # GET /opportunities/1
  # GET /opportunities/1.json
  def searchDaysGov
   daysLess = params[:id]
   Rails.logger = Logger.new(STDOUT)
   logger.info "Date limit is :" << daysLess.to_i  
   now = Date.today
   days_ago = (now - daysLess.to_i)
   logger.info "Date limit is :" << days_ago.to_s
   #@opportunities = Opportunity.all
   @opportunities = Opportunity.where("updated_at >= ?", days_ago)
   render json: @opportunities
  end

  # GET /opportunities
  # GET /opportunities.json
  def searchByGov
   Rails.logger = Logger.new(STDOUT)
   criteria = params[:criteria]
   value = params[:value]
   case criteria
     when "id"
      @opportunities = Opportunity.where("id = ?", value)
     when "title"
      @opportunities = Opportunity.where("title = ?", value)
     when "opportunitytype"
      @opportunities = Opportunity.where("opportunitytype = ?", value)
     when "description"
      @opportunities = Opportunity.where("description = ?", value)
     when "setaside"
      @opportunities = Opportunity.where("setaside = ?", value)
     when "publishdate"
       @opportunities = Opportunity.where("date(publishdate) = ?", value)
     when "responseduedate"
        @opportunities = Opportunity.where("responseduedate = ?", value)
     when "status"
        @opportunities = Opportunity.where("status = ?", value)
     when "buyername"
        @opportunities = Opportunity.where("buyername = ?", value)
     when "placeofperform"
        @opportunities = Opportunity.where("placeofperform = ?", value)
     else "primaypoc"
        @opportunities = Opportunity.where("primaypoc = ?", value)
   end
   #@opportunities = Opportunity.all
   render json: @opportunities
  end

  # GET /opportunities
  # GET /opportunities.json
  def searchByCon
   Rails.logger = Logger.new(STDOUT)
   criteria = params[:criteria]
   value = params[:value]
   case criteria
     when "id"
      @opportunities = Opportunity.where("id = ? and status= ?", value, "Publish")
     when "title"
      @opportunities = Opportunity.where("title = ? and status= ?", value, "Publish")
     when "opportunitytype"
      @opportunities = Opportunity.where("opportunitytype = ? and status= ?", value, "Publish")
     when "description"
      @opportunities = Opportunity.where("description = ? and status= ?", value, "Publish")
     when "setaside"
      @opportunities = Opportunity.where("setaside = ? and status= ?", value, "Publish")
     when "publishdate"
       @opportunities = Opportunity.where("date(publishdate) = ? and status= ?", value, "Publish")
     when "responseduedate"
        @opportunities = Opportunity.where("responseduedate = ? and status= ?", value, "Publish")
     when "status"
        @opportunities = Opportunity.where("status = ? and status= ?", value, "Publish")
     when "buyername"
        @opportunities = Opportunity.where("buyername = ? and status= ?", value, "Publish")
     when "placeofperform"
        @opportunities = Opportunity.where("placeofperform = ? and status= ?", value, "Publish")
     else "primaypoc"
        @opportunities = Opportunity.where("primaypoc = ? and status= ?", value, "Publish")
   end
   #@opportunities = Opportunity.all
   render json: @opportunities
  end

  # POST /opportunities
  # POST /opportunities.json
  def create
    @opportunity = Opportunity.new(opportunity_params)
    @opportunity.status = "Draft"

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
      params.require(:opportunity).permit(:title, :opportunitytype, :description, :setaside, :publishdate, :responseduedate, :status, :buyername, :placeofperform, :primaypoc)
    end
end
