class TestsController < ApplicationController

  def new
    @score = Score.new

    @score.results.build

    @tests = Test.all
  end

  def index
  end

  def create
    byebug
    (score_params)

    @score = Score.new(score_params)
    @score.save
    redirect_to tests_path
  end

  def show
  end

  private
    def score_params
        params.require(:score).permit(:score, results_attributes:[:id, :test_id, :selection_result, :judgment])
    end

end
