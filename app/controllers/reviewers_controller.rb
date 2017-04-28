class ReviewersController < ApplicationController
  before_action :set_reviewer, only: [:show, :update, :destroy]

  # GET /reviewers
  def index
    @reviewers = Reviewer.all

    render json: @reviewers
  end

  # GET /reviewers/1
  def show
    render json: @reviewer
  end

  # POST /reviewers
  def create
    @reviewer = Reviewer.new(reviewer_params)

    if @reviewer.save
      render json: @reviewer, status: :created, location: @reviewer
    else
      render json: @reviewer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reviewers/1
  def update
    if @reviewer.update(reviewer_params)
      render json: @reviewer
    else
      render json: @reviewer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reviewers/1
  def destroy
    @reviewer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reviewer
      @reviewer = Reviewer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reviewer_params
      params.require(:reviewer).permit(:username, :industry)
    end
end
