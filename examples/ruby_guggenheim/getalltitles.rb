
##
# ruby_guggenheim
# Author: Cameron Browning
# Organization: Solomon R. Guggenheim Foundation
# 2014
#
# Description: This example file makes a request to
# The Guggenheim Collections API and determines the
# number of paged requests necessary to download all
# collections objects and save them in sequential files.
#
# Once you run it, it will output the api request URLs as
# they are accessed, and create the local files
# objects1.json ... objects16.json
#
# This is a handy technique for caching this information
# locally for other applications to more quickly access it.
#
#

require "net/http"
require "uri"
require "rubygems"
require "json"

constituentsArray = Array.new

url = URI.parse("http://api.guggenheim.org/collections/objects")
params = { :no_objects => true, :per_page => 100 }
req = Net::HTTP::Get.new(url)

# GUGG: TODO:
# import this from an ignored file so it doesn't get accidentally
# committed to the repo
req.add_field("X-GUGGENHEIM-API-KEY", "YOURAPIKEYGOESHERE")
req.add_field("Accept", "application/vnd.guggenheim.collection+json")

res = Net::HTTP.new(url.host, url.port).start do |http|
	http.request(req)
end



filename = ""

parsedResult = JSON.parse(res.body)
totalCount =  parsedResult["objects"]["total_count"]
numPages = (totalCount/100.0).ceil

filename = "alltitles.csv"
mystring = ""
begin
file = File.open(filename, "w")

(1..numPages).each do |pagenum|
	url = URI.parse("http://api.guggenheim.org/collections/objects")

	params = { :page => pagenum, :per_page => "100" }
	url.query = URI.encode_www_form( params )
	puts url.to_s
	req = Net::HTTP::Get.new(url)

	# GUGG: TODO:
	# import this from an ignored file so it doesn't get accidentally
	# committed to the repo
	req.add_field("X-GUGGENHEIM-API-KEY", "YOURAPIKEYGOESHERE")
	req.add_field("Accept", "application/vnd.guggenheim.collection+json")
	res = Net::HTTP.new(url.host, url.port).start do |http|
		http.request(req)
	end



		myjson = JSON.parse(res.body)

		myjson['objects']['items'].each do |item|
			puts item['titles']['primary']['title']
			mystring += item['titles']['primary']['title'] + "\n"
		end
		#myjson['objects']['items'][0]







end
file.write(mystring)

rescue IOError => e
	puts "ERROR. Dir not writable?"
ensure
	file.close unless file == nil
end

