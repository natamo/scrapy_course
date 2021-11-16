import scrapy


class QuotesSpider(scrapy.Spider):
    name = 'quotes'
    allowed_domains = ['quotes.toscrape.com']
    start_urls = ['http://quotes.toscrape.com/']

#    def parse(self, response):
#        pass

#    def parse(self, response):
#        h1_tag = response.xpath('//h1/a/text()').extract_first()
#        tags = response.xpath('//*[@class="tag-item"]/a/text()').extract()

 #       yield {'H1 Tag': h1_tag, 'Tags': tags}
    
    def parse(self, response):
        quotes = response.xpath('//*[@class="quote"]')
        for quote in quotes:
            text = quote.xpath('.//*[@class="text"]/text()').extract_first()
            author = quote.xpath('.//*[@itemprop="author"]/text()').extract_first()
            tags = quote.xpath('.//*[@itemprop="keywords"]/@content').extract_first()

            print ('\n')
            print (text)
            print (author)
            print (tags)
            print ('\n')
