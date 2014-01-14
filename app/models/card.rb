class Cards < ActiveRecord::Base
  # config.assets.initialize_on_precompile = false
  attr_accessible :email, :phone
end