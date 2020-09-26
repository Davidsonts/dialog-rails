class ApiUser
  include HTTParty
  require "dotenv"
  Dotenv.load("../.env")
  
  base_uri "#{ENV['API_URL']}"

  def initialize
    @options = {}
  end
  
  def all
    self.class.get('/users', @options)
  end
end