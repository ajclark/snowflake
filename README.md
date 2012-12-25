# Snowflake

## About

Snowflake is a simple, super light-weight ruby gem to interact with a service-now.com configuration management database. 


## Install

    gem install snowflake

## Example

    require 'savon'
    require 'snowflake'

    client = Snowflake.new(:endpoint => "https://yourcompany.service-now.com/cmdb_ci_server.do?WSDL", :user => "joe", :password => "bloggs")
    puts client.get(:hostname => "cloudserver01.yourcompany.com", :ci_field => "dns_domain")
