from urllib2 import Request, urlopen, URLError

request = Request('127.0.0.1:3000')

try:
	response = urlopen(request)
	responseContent = response.read()
	print responseContent[559:1000]
except URLError, e:
    print 'There is no whaly :(', e