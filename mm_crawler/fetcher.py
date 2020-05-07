# import re
from time import sleep
from .utils import prefix_url, print_debug

# from conf.config import wait_time_settings, options_settings
from .conf.config import wait_time_settings, options_settings

# fetch gene trait
# @print_debug
def fetch_gene_trait(browser, element):
    gene_trait = browser.find_one("div.morph-label > a", elem=element)
    gene_trait = gene_trait.text.strip() if gene_trait else 'N/A'
    return gene_trait

# fetch gene trait url
# @print_debug
def fetch_gene_trait_url(browser, element):
    gene_trait_url = browser.find_one("div.morph-label > a", elem=element)
    gene_trait_url = gene_trait_url.get_attribute("href") if gene_trait_url else 'N/A'
    return gene_trait_url

# fetch normal gene
# @print_debug
def fetch_normal(browser, element):
    normal = browser.find_one("span.label.trait.dom-codom", elem=element)
    normal = normal.text if normal else 0
    return int(normal)


# fetch super gene
# @print_debug
def fetch_super(browser, element):
    super_ = browser.find_one("span.label.trait.super-dom-codom", elem=element)
    super_ = super_.text if super_ else 0
    return int(super_)


# fetch possible het gene
# @print_debug
def fetch_possible_het(browser, element):
    possible_het = browser.find_one("span.label.trait.pos-rec", elem=element)
    possible_het = possible_het.text if possible_het else 0
    return int(possible_het)


# fetch het gene
# @print_debug
def fetch_het(browser, element):
    het = browser.find_one("span.label.trait.het-rec", elem=element)
    het = het.text if het else 0
    return int(het)


# fetch visual gene
# @print_debug
def fetch_visual(browser, element):
    visual = browser.find_one("span.label.trait.vis-rec", elem=element)
    visual = visual.text if visual else 0
    return int(visual)

# fetch possible other gene
# @print_debug
def fetch_possible_other(browser, element):
    possible_other = browser.find_one("span.label.trait.pos-other", elem=element)
    possible_other = possible_other.text if possible_other else 0
    return int(possible_other)

# fetch normal other gene
# @print_debug
def fetch_normal_other(browser, element):
    normal_other = browser.find_one("span.label.trait.other", elem=element)
    normal_other = normal_other.text if normal_other else 0
    return int(normal_other)