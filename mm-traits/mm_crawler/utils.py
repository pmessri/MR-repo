from functools import wraps
from datetime import datetime
import inspect
from .conf.config import debug_settings, wait_time_settings


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