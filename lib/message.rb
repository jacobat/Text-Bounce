class Message < ActiveRecord::Base
  class << self
    def default_view
      order('created_at DESC').limit(10)
    end
  end
end