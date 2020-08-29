# -*- encoding: utf-8 -*-

import os, io, re, math
from glob import glob

def  get_(size):
	#2**10 = 1024
	power = 2**10
	n = 0
	Dic_powerN = {0 : '', 1: 'kilo', 2: 'mega', 3: 'giga', 4: 'tera'}
	while size > power:
		size /=  power
		n += 1
	return size, Dic_powerN[n]+'bytes'

def truncate(number, digits) -> float:
	stepper = pow(10.0, digits)
	return math.trunc(stepper * number) / stepper

result = [y for x in os.walk('.')
for y in glob(os.path.join(x[0], '*.dm'))]

oggused	= r'stalker/[/_\-\d\w]+.ogg'

o = open("oggs.txt", "w")

c = 0
ts = 0

for x in range(len(result)):
	with io.open((result[x])) as file:
		data = str(file.read())
		if re.findall(oggused, data):
			ob = (re.findall(oggused, data))
			for i in range(len(ob)):
				c += 1
				wr = ob[i].split('\n')
				for l in range(len(wr)):
					an = wr[l].strip('\n')
					if not os.path.exists(an):
						print('NO FILE: ' + an)
						continue
					b = os.path.getsize(an)
					ts += b
					b = get_(b)
					o.write(str(an) + ' ' + str(truncate(b[0], 1)) + ' ' + str(b[1]))
				o.write('\n')

print ('Total Size: ' + str(int(get_(ts)[0])) + ' MB')
print ('Ogg\'s count: ' + str(c))
file.close()