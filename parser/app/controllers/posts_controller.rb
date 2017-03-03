require 'open-uri'
require 'nokogiri'
require 'json'

# Allows to parse posts
class PostsController < ApplicationController
  def index
    # news = []

    # for i in 1..3
    #   doc = get_document(i)
    #   parse_document(doc, news)
    # end

    @message = JSON.pretty_generate(news)
  end

  # def parsed_item_params
  #   params.require(:ParsedItem).permit(:id, :author, :title, :site, :url)
  # end

  # def parse_document(doc, news)
  #   doc.at('.itemlist').search('tr').each do |tr|
  #     if tr['class'] == 'athing'
  #       post_id = tr['id']
  #       author = tr.next_element.css('.hnuser').text
  #       title = tr.css('.storylink').text
  #       site = tr.css('.sitestr').text
  #       url = tr.css('.storylink').attr('href')
  #       news.push(id: post_id, author: author, title: title, site: site, url: url)
  #       save_item(post_id, author, title, site, url)
  #     end
  #   end
  # end

  # def save_item(post_id, author, title, site, url)
  #   parsed_item = ParsedItem.new

  #   parsed_item.post_id = post_id
  #   parsed_item.author = author
  #   parsed_item.title = title
  #   parsed_item.site = site
  #   parsed_item.url = url

  #   parsed_item.save
  # end

  # def get_document(index)
  #   url = "https://news.ycombinator.com/news?p=#{index}"
  #   puts url
  #   html = open(url, ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE)
  #   Nokogiri::HTML(html)
  # end
end
