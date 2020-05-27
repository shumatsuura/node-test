class CovidsController < ApplicationController
  def index
    @covids = Covid.where.not(prefecture: nil).group(:prefecture).count
  end
end
