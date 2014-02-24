# encoding: UTF-8
require 'city_detail'
 describe "StringMatchables" do
  it "should return proper country name" do
  CityDetail::Info.country("New York").should eq("United States of America")
  lambda{CityDetail::Info.country("Invalid city")}.should raise_error(ArgumentError)
 end

  it "should return proper coordinate types" do
  CityDetail::Info.coord("New York")["lon"].should eq(-74.01)
  CityDetail::Info.coord("New York")["lat"].should eq(40.71)
  lambda{CityDetail::Info.coord("Invalid city")}.should raise_error(ArgumentError)
  end

  it "should return proper weather details" do
  CityDetail::Info.weather("New York")["temp"].should_not be_nil
  CityDetail::Info.weather("New York")["temp_min"].should_not be_nil
  CityDetail::Info.weather("New York")["temp_max"].should_not be_nil
  CityDetail::Info.weather("New York")["description"].should_not be_nil

  lambda{CityDetail::Info.coord("Invalid city")}.should raise_error(ArgumentError)
  end

end
