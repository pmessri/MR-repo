from functools import wraps
from time import sleep
import os
import json
from datetime import datetime
import dateutil.parser
import requests
from urllib.parse import urlparse
import inspect
from .conf.config import debug_settings, wait_time_settings
from .exceptions import RetryException


def print_debug(func):
    #Decorator to print function call details - parameters names and effective values.
    def wrapper(*args, **kwargs):
        if debug_settings['PRINT_FULL_DEBUG_INFO']:
            # _ = system('clear')
            print('\n\n')
            func_args = inspect.signature(func).bind(*args, **kwargs).arguments
            func_args_str =  ', '.join('{} = {!r}'.format(*item) for item in func_args.items())
            print(f'{func.__name__} ( {func_args_str} )')

        return func(*args, **kwargs)

    return wrapper


#add url in the beginning of string
# @print_debug
def prefix_url(string, url="https://www.morphmarket.com/"):
    return url+string


# get current date and time
# @print_debug
def get_current_datetime():
    return '{date:%d-%m-%Y_%H:%M:%S:%f}'.format( date=datetime.now() )[:-3]