class Snowflake
  attr_accessor :endpoint, :user, :password, :hostname, :ci_field
  
  def initialize(params = {})
    @user = params.fetch(:user)
    @endpoint = params.fetch(:endpoint)
    @password = params.fetch(:password)
  end
  
  def debug(value = false)
    Savon.configure do |config|
      config.log = value
      HTTPI.log = value
    end
  end
    
  def get(params = {})
    hostname = params.fetch(:hostname)
    ci_field = params.fetch(:ci_field)
    
    debug(false)
    
    instance = Savon::client do
      wsdl.document = endpoint
      http.auth.basic user, password
    end
    
    response = instance.request(:get_records) do
      soap.body = { :name => hostname }
    end
      
    hash = response.to_hash
      
    hash.each_pair do |k, v|
      @answer = v[:get_records_result][ci_field.to_sym]
    end
    @answer.downcase
  end
end