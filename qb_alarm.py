
import httplib
import uuid
import time

url = "192.168.11.141:1882/qb"
url += str(int(time.time()))
url += "&token="
url += uuid.uuid4().hex

print url

