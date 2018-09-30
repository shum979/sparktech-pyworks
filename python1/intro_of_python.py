#Fibaonacci seriese 
#---+-+-+-+-+-+-+-+-+-+-Approach#1+-+-+-+-+-+-+-+-+-+-
counter = 10
n_1 = 0
n_2 = 1

while counter > 0:
    print(n_1)
    next_val = n_1 + n_2
    n_1 = n_2
    n_2 = next_val
    counter -= 1
	
#---+-+-+-+-+-+-+-+-+-+-Approach#2+-+-+-+-+-+-+-+-+-+-
a, b = 0, 1
while a < 1000:
     print(a, end=',')
     a, b = b, a+b
	 
##========================================================================
#Law of large numbers
import numpy as np
cnt = 100000
one_cnt = 0
minus_one=0
for x in range(cnt):
    num = np.random.randn()
    if (num > 0 and num < 1 ):
        one_cnt += 1
    elif(num < 0 and num > -1):
        minus_one += 1
        
percent = 100*(one_cnt+minus_one)/cnt
print(percent)
	



