class ApiUser
  include HTTParty
  base_uri 'http://localhost:8080'

  def initialize
    @options = {}
  end
  
  def all
    self.class.get('/users', @options)
  end
end