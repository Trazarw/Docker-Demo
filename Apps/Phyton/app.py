from urllib2 import Request, urlopen

request = Request('127.0.0.1:81')
response = urlopen(request)
responseContent = response.read()
print responseContent[559:1000]