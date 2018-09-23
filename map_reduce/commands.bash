#Test your code locally
cat data | map | sort | reduce

#Run you code in Hadoop cluster
bin/hadoop jar contrib/streaming/hadoop-*streaming*.jar \
-file /home/maximus/mapper.py    -mapper /home/maximus/mapper.py \
-file /home/maximus/reducer.py   -reducer /home/maximus/reducer.py \
-input /user/maximus/gutenberg/* -output /user/maximus/gutenberg-output


#reference link
#https://www.michael-noll.com/tutorials/writing-an-hadoop-mapreduce-program-in-python/