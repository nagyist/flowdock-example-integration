require_relative 'activity'

module Flowdock
  class Vote < Activity
    def initialize(vote, user)
      @vote = vote
      super(vote.option.poll, user)
    end

    protected

    def event
      "activity"
    end

    def title
      "Voted for #{@vote.option.title}"
    end
  end
end
