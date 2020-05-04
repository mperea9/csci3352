class ScoresController < ApplicationController
  def index

  end

  def new
    @score = Score.new

    #gon.currentScenario = @score.scenario
    #gon.currentDifficulty = @score.difficulty
    #gon.currentMode = @score.realtime
    #
    #gon.relevantScores = Score.where(scenario: currentScenario).where(difficulty: currentDifficulty).where(realtime: currentMode)

  end

  def create
    @score = Score.new(score_params)

    @score.save

    gon.relevantScores = Score.where(scenario: @score.scenario)
                              .where(difficulty: @score.difficulty)
                              .where(realtime: @score.realtime)



  end

  private

    def score_params
      # It's mandatory to specify the nested attributes that should be whitelisted.
      # If you use `permit` with just the key that points to the nested attributes hash,
      # it will return an empty hash.
      params.require(:score).permit(:difficulty, :infected, :quarantined, :realtime, :saved, :scenario)
    end

end