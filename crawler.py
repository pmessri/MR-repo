from __future__ import unicode_literals

import argparse
import sys
from io import open

from mm_crawler import MMCrawler

# usage of this tool
def usage():
    return """
        python3 crawler.py
    """

# get data/counts from url
def get_data(debug):
    print('Initializing...')
    crawler = MMCrawler(has_screen=debug)
    return crawler.get_counts()


# check that the given argument is required
def arg_required(args, fields=[]):
    for field in fields:
        if not getattr(args, field):
            parser.print_help()
            sys.exit()

# if called by the filename itself and not from by importing
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="MM Crawler", usage=usage())
    
    parser.add_argument("--debug", action="store_true", help="display in browser")

    args = parser.parse_args()

    get_data(args.debug)