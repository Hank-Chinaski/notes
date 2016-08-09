hel@client8104:~/tmp/livepacks$ ll
total 670040
drwxr-xr-x  2 hel hel      4096 2012-01-19 11:57 ./
drwxr-xr-x 15 hel hel      4096 2012-01-18 18:03 ../
-rw-r--r--  1 hel hel  11041370 2012-01-19 11:57 DesignerDrums_r18667_v1.0.alp
-rw-r--r--  1 hel hel 218860021 2012-01-18 18:03 drum_machines_v8.3.zip
-rw-r--r--  1 hel hel 456198112 2012-01-18 18:04 LatinPercussion_v8.2.zip
hel@client8104:~/tmp/livepacks$ python
Python 2.6.6 (r266:84292, Sep 15 2010, 15:52:39)
[GCC 4.4.5] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import os
>>> os.listdir(os.getcwd())
['drum_machines_v8.3.zip', 'LatinPercussion_v8.2.zip', 'DesignerDrums_r18667_v1.0.alp']
>>> path = os.path.join(os.getcwd(), 'DesignerDrums_r18667_v1.0.alp')
>>> path
'/home/hel/tmp/livepacks/DesignerDrums_r18667_v1.0.alp'
>>> from hashlib import md5
>>> file = open(path)
<open file '/home/hel/tmp/livepacks/DesignerDrums_r18667_v1.0.alp', mode 'r' at 0xb735a1d8>
>>> fcont = file.read()
>>> foo = md5(fcont)
>>> foo.hexdigest()
'3ca990d9726017bbabf0e62905fde412'
hel@client8104:~/tmp/livepacks$
