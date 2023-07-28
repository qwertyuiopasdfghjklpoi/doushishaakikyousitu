# frozen_string_literal: true

module CountPv
  extend ActiveSupport::Concern

  def count_pv(action, controller)
    redis = Redis.new
    count = redis.get "count_#{controller}_#{action}"
    redis.set "count_#{controller}_#{action}", count.to_i + 1
    p redis.get "count_#{controller}_#{action}"
  end
end
