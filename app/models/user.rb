class User < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :password
  before_validation :sha256, only:[:password]

  private
    def sha256
      self.salt = srand.to_s
      self.password = Digest::SHA256.hexdigest("#{self.salt}#{self.password}")
    end
  
end
