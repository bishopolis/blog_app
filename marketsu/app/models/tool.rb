class Tool < ActiveRecord::Base
  attr_accessible :budget, :channel, :experience_level, :image, :logo, :name, :price, :summary, :url
end
