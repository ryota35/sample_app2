class TestsController < ApplicationController

  def new
    @score = Score.new
    @score.results.build
    @tests = Test.test_set
  end

  def index
    @max_score = current_user.scores.maximum(:score)
  end

  def create
    score = Score.new(score_params)
    score.user_id = current_user.id
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
        params.require(:score).permit(:score, results_attributes:[:test_id, :selection_result, :judgment])
    end

end
