class HighScores
  attr_reader :all_scores

  def initialize(all_scores)
    @all_scores = all_scores
  end

  def scores
    all_scores
  end

  def latest
    all_scores.last
  end

  def personal_best
    all_scores.max
  end

  def personal_top_three
    all_scores.sort.last(3).reverse
  end

  def latest_is_personal_best?
    latest == personal_best
  end
end
