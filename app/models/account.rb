class Account < ActiveRecord::Base
  has_many :users
  has_many :stacks
  validates_formatting_of :login_url, using: :url
end
