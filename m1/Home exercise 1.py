### Read content from file and create a Dictionary
import os
cwd = os.getcwd()

file_name = 'sample/home_exercise_1.txt'
week = {}

with open(file_name,'r') as file:
    for line in file.readlines():
        arr = line.strip().split(',')
        week[arr[0]] = arr[1]
        
print(week)
print(type(week))

