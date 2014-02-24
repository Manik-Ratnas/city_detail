require 'open-uri'
require 'json'

module CityDetail
	class Info
		class << self
			def all(city_name)
			  city=city_name.gsub(' ', '_')
	 		  request  = "http://api.openweathermap.org/data/2.5/weather?q=#{city}"
			  response = open(request).readlines.join
			  details = JSON.parse(response)
			  raise ArgumentError, "Invalid City Passed" if details["message"]
			  details
			 
	        end

	        def country(city_name) 
	        	all(city_name)["sys"]["country"] 
	        end

	        def weather(city_name) 
	        	all(city_name)["weather"][0].merge(all(city_name)["main"])
	        end
	        
	        def coord(city_name)
	        	all(city_name)["coord"] 
	        end
        end


          
    end  
end