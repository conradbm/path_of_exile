# import libraries
import urllib2
from bs4 import BeautifulSoup
import sys, os, subprocess, time, re, threading

interval_mins = 0.15
target_url = "http://currency.poe.trade/search?league=Legacy&online=x&want=&have=5"
output_dir = os.getcwd()



def run(interval, url):
    threading.Timer(interval, run, [interval, url]).start()
    soup = scrape_page(url)
    print soup
    
def scrape_page(some_url):
    quote_page = some_url
    page = urllib2.urlopen(quote_page)
    soup = BeautifulSoup(page, "html.parser")
    return soup
    

if __name__=="__main__":

    ### Run this: python scrape.py <interval> <target>
    interval = sys.argv[1]
    site = sys.argv[2]
    print "Interval (mins): ", str(interval)
    print "Target URL: ", site
    run(interval, site)
