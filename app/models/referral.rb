class Referral < ActiveRecord::Base
  attr_accessible :client_email, :client_name, :public_comments
end
