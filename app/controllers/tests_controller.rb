class TestsController < ApplicationController
  before_action :tests

  def new
    @score = Score.new
    @score.results.build
    @tests = test_set
  end

  def index
    @max_score = Score.maximum(:score)
  end

  def create
    score = Score.new(score_params)
    score.save

    re_score = Score.last
    number = re_score.results.where(judgment: 'true').count
    score.update(score: number)
    redirect_to test_path(re_score)
  end

  def show
    @score = Score.find(params[:id])
    @results = @score.results
  end

  private
    def score_params
        params.require(:score).permit(:score, results_attributes:[:id, :test_id, :selection_result, :judgment])
    end

    

end
