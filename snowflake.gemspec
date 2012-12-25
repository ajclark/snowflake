Gem::Specification.new do |s|
  s.name        = 'snowflake'
  s.version     = '0.0.1'
  s.date        = '2012-12-25'
  s.summary     = "Snowflake"
  s.description = "A super simple library to intract with a service-now.com configuration database"
  s.authors     = ["Allan Clark"]
  s.email       = 'allan.clark@me.com'
  s.files       = ["lib/snowflake.rb"]
  s.homepage    = 'http://github.com/ajclark/snowflake'
  s.add_dependency('savon', "~> 1.2.0")
  s.add_dependency('httparty', "~> 0.6.1")
  s.add_dependency('akami', "~> 1.2.0")
end