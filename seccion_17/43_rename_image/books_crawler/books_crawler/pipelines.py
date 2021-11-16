# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html
import os


class BooksCrawlerPipeline(object):
    def process_item(self, item, spider):
        os.chdir('/workspace/scrapy_course/seccion_17/43_rename_image/books_crawler')
        
        if item['images'][0]['path']:
            new_image_name = item['title'][0] + '.jpg'
            new_image_path = 'full/' + new_image_name

            os.rename(item['images'][0]['path'], new_image_path)