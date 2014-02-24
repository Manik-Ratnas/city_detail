# CityDetail

A wrapper for openweathermap.org api.

## Installation

Add this line to your application's Gemfile:

    gem 'city_detail'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install city_detail

## Usage

This is a wrapper for openweathermap.org api. With this gem, You can get details like weather, longitude, latitude, country it belongs to, etc for any given city. 


 This gem provides u access to following methods..


	CityDetail::Info.coord("New York") # => {"lon"=>-74.01, "lat"=>40.71}


    CityDetail::Info.weather("New York") # => {"id"=>741, "main"=>"Fog", "description"=>"fog", "icon"=>"50n", "temp"=>272.71, "pressure"=>1014, "humidity"=>92, "temp_min"=>268.15, "temp_max"=>278.15}

     CityDetail::Info.country("New York") # => "United States of America"



	CityDetail::Info.all("New York") 
    # => {"coord"=>{"lon"=>-74.01, "lat"=>40.71}, "sys"=>{"message"=>0.0513, "country"=>"United States of America", "sunrise"=>1393069152, "sunset"=>1393108777}, "weather"=>[{"id"=>741, "main"=>"Fog", "description"=>"fog", "icon"=>"50n"}, {"id"=>701, "main"=>"Mist", "description"=>"mist", "icon"=>"50n"}], "base"=>"cmc stations", "main"=>{"temp"=>272.71, "pressure"=>1014, "humidity"=>92, "temp_min"=>268.15, "temp_max"=>278.15}, "wind"=>{"speed"=>2.8, "deg"=>258.503}, "clouds"=>{"all"=>1}, "dt"=>1393058100, "id"=>5128581, "name"=>"New York", "cod"=>200}


## Contributing

1. Fork it ( http://github.com/Manik-Ratnas/city_detail/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

:collision: :collision: :collision: