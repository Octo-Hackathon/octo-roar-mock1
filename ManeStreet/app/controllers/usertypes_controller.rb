class UsertypesController < ApplicationController
  before_action :set_usertype, only: [:show, :update, :destroy]

  # GET /usertypes
  # GET /usertypes.json
  def index
    @usertypes = Usertype.all

    render json: @usertypes
  end

  # GET /usertypes/1
  # GET /usertypes/1.json
  def show
    render json: @usertype
  end

  # POST /usertypes
  # POST /usertypes.json
  def create
    @usertype = Usertype.new(usertype_params)

    if @usertype.save
      render json: @usertype, status: :created, location: @usertype
    else
      render json: @usertype.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usertypes/1
  # PATCH/PUT /usertypes/1.json
  def update
    @usertype = Usertype.find(params[:id])

    if @usertype.update(usertype_params)
      head :no_content
    else
      render json: @usertype.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usertypes/1
  # DELETE /usertypes/1.json
  def destroy
    @usertype.destroy

    head :no_content
  end

  private

    def set_usertype
      @usertype = Usertype.find(params[:id])
    end

    def usertype_params
      params.require(:usertype).permit(:name)
    end
end
