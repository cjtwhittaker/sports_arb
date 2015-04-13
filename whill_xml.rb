#pulling in the xml feed for william hill
require 'net/HTTP'

uri = URI.parse('http://cachepricefeeds.williamhill.com/openbet_cdn?action=template&template=getHierarchyByMarketType&classId=1&marketSort=--&filterBIR=Y');

# Request the William Hill XML feed
begin
  response = Net::HTTP.get_response(uri);
  if response.code != "200"
    raise
  end
rescue
  puts "Failed to request XML feed."
  exit 1
end
