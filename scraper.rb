# -*- coding: utf-8 -*-
 
require 'json'
require 'turbotlib'
 
Turbotlib.log("Starting run...") # optional debug logging
 
# Create a single address
data = {
  "saon" => "",
  "paon" => "10",
  "street" => "Downing Street",
  "locality" => nil,
  "town" => "London",
  "postcode" => "SW1A 2AA",
  "provenance"=> {
    "activity"=> {
      "executed_at"=>"2015-01-30T17:57:51+00:00",
      "processing_scripts"=>"https://github.com/oa-bots/dave-the-robot",
      "derived_from" => [
        {
          "type"=>"userInput",
          "input"=>"10 Downing Street, London, SW1A 2AA",
          "inputted_at"=>"2015-01-30T17:57:51+00:00",
          "processing_script"=> "https://github.com/oa-bots/dave-the-robot"
        }
      ]
    }
  }
}
# The Turbot specification simply requires us to output lines of JSON
puts JSON.dump(data)