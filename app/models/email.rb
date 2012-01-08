class Email < ActiveRecord::Base
  validates_presence_of :email  
end