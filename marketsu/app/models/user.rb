class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :budget, :channel, :experience_level
end
