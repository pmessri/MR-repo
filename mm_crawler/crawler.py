import sys
import traceback
from time import sleep
from tqdm import tqdm
from .browser import Browser
from .exceptions import RetryException, NoDataException
from .fetcher import fetch_gene_trait, fetch_gene_trait_url, fetch_normal, fetch_super, fetch_possible_het, fetch_het, fetch_visual, fetch_possible_other, fetch_normal_other
# from .utils import  print_debug
from .conf.config import wait_time_settings, debug_settings, options_settings
from .db import mysql_insert, mongo_insert
import time
import datetime

# main class InstagramCrawler
class MMCrawler():
    urls = {
        "FOR_SALE" : "https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/index",
        "SOLD" : "https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/index?secret-refresh=1&region=us&epoch=1",
        "ALL" : "https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/index?secret-refresh=1&region=us&epoch=2",
    }

    # constructor
    def __init__(self, has_screen=False):
        super(MMCrawler, self).__init__()
        self.browser = Browser(has_screen)
        self.page_height = 0

    
    
    # get posts details of user
    # @print_debug
    def get_counts(self):
        
        pbar = tqdm(total=3)
        
        browser = self.browser
        ts = time.time()
        timestamp = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')
        
        
        for key, value in self.urls.items():

            pbar.set_description('Fetching: '+key)
            pbar.update(1)
            browser.get(value)
            sleep(wait_time_settings['PAGE_WAIT_TIME'])

            elems = browser.find("div.gene-index.clearfix > div")

            if not elems:
                sys.stderr.write(
                        "\x1b[1;31m"
                        + "Data is not available "
                        + "\x1b[0m"
                        + "\n"
                    )
                raise NoDataException

            for elem in elems:
                
                try:
                    pbar.set_description('Fetching Data for '+key)
                    data = []
                    type_ = key

                    gene_trait = fetch_gene_trait(browser, elem)
                    gene_trait_url = fetch_gene_trait_url(browser, elem)
                    normal = fetch_normal(browser, elem)
                    super_ = fetch_super(browser, elem)
                    possible_het = fetch_possible_het(browser, elem)
                    het = fetch_het(browser, elem)
                    visual = fetch_visual(browser, elem)
                    possible_other = fetch_possible_other(browser, elem)
                    normal_other = fetch_normal_other(browser, elem)
                    
                    data.append(gene_trait)
                    data.append(gene_trait_url)
                    data.append(normal)
                    data.append(super_)
                    data.append(possible_het)
                    data.append(het)
                    data.append(visual)
                    data.append(possible_other)
                    data.append(normal_other)
                    data.append(type_)
                    data.append(timestamp)
                    
                    if options_settings['MYSQL_SAVE']:
                        mysql_insert(data)
                    if options_settings['MONGODB_SAVE']:
                        mongo_insert(data)

                except Exception:
                    err_tb = traceback.format_exc()
                    
                    if debug_settings['PRINT_TB']:
                        traceback.print_exc()
                        print( "*-*-*-*-*- Exception Occured: *-*-*-*-*-")

        pbar.set_description("Done ")
        pbar.close()