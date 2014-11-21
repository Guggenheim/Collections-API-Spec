
require "net/http"
require "uri"
require "rubygems"
require "json"

constituentsArray = Array.new

url = URI.parse("http://api.guggenheim.org/collections/objects")
params = { :no_objects => true, :per_page => 100 }
req = Net::HTTP::Get.new(url)
req.add_field("X-GUGGENHEIM-API-KEY", "YOURAPIKEYHERE")
req.add_field("Accept", "application/vnd.guggenheim.collection+json")
res = Net::HTTP.new(url.host, url.port).start do |http|
	http.request(req)

end
	puts res.body

filename = "allobjects.json"
#begin
#  file = File.open(filename, "w")
 #file.write(res.body) 
#rescue IOError => e
  #some error occur, dir not writable etc.
#ensure
 # file.close unless file == nil
#end

parsedResult = JSON.parse(res.body)
totalCount =  parsedResult["objects"]["total_count"]
numPages = (totalCount/100.0).ceil


(1..numPages).each do |pagenum|
url = URI.parse("http://api.guggenheim.org/collections/objects")


params = { :page => pagenum, :per_page => "100" }
url.query = URI.encode_www_form( params )
puts url.to_s
req = Net::HTTP::Get.new(url)
req.add_field("X-GUGGENHEIM-API-KEY", "YOURAPIKEYGOESHERE")
req.add_field("Accept", "application/vnd.guggenheim.collection+json")
res = Net::HTTP.new(url.host, url.port).start do |http|
	http.request(req)
	#puts req
end
filename = "objects"+pagenum.to_s+".json"
begin
  file = File.open(filename, "w")
 file.write(res.body) 
rescue IOError => e
  #some error occur, dir not writable etc.
ensure
  file.close unless file == nil
end

end
#puts res.body

#parsedResult = JSON.parse(res.body)
#constituentsArray.concat parsedResult['constituents']
#end

