class User < ActiveRecord::Base
  attr_accessible :account, :email, :name, :password
end
