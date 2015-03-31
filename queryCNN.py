from grab import Grab
import sys

g = Grab()

g.go('http://demo.caffe.berkeleyvision.org/classify_url?imageurl=' + sys.argv[1])
i = 0
for elem in g.doc.select('//ul/li/h4/a'):
        print '%s' % (elem.text())
        i = i + 1
        if i >= 5:
            break


