class ReviewersController < OpenReadController
  before_action :set_reviewer, only: [:show, :destroy, :update]
  # GET /reviewers
  def index
    @reviewers = Reviewer.all
    ## @reviewers = current_user.reviews
    render json: @reviewers
  end

  # GET /reviewers/1
  def show
    render json: @reviewer
  end

  # POST /reviewers

  def create
    if current_user.reviewer.nil?
      @reviewer = current_user.build_reviewer(reviewer_params)
      if @reviewer.save
        render json: @reviewer, status: :created
      else
        render json: @reviewer.errors, status: :unprocessable_entity
      end
    else
      :unprocessable_entity
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
    # @reviewer.destroy
    if @reviewer.destroy
      render json: { id: @reviewer.id }
    else
      render json: { id: @reviewer.id }, status: :unprocessable_entity
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reviewer
    @reviewer = current_user.reviewer(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def reviewer_params
    params.require(:reviewer).permit(:username, :industry)
  end
end
