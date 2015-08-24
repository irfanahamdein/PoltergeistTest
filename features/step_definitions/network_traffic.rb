Given(/^I am on the Tinyowl home page$/) do
  visit "http://tinyowl.com"
end

When(/^I called network traffic using Poltergeist$/) do
end


Then(/^I should see list of all resources loaded after a web page document has started to load$/) do
  page.driver.network_traffic.each do |request|
  request.response_parts.uniq(&:url).each do |response|
    puts "\n Responce URL #{response.url}: \n Status #{response.status}"
  end
end
end
