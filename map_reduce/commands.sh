#Test your code locally
cat data | map | sort | reduce

#Run you code in Hadoop cluster
hadoop jar mr/hadoop-streaming-2.5.2.jar \
-file /home/maximus/mr/mapper.py -mapper /home/maximus/mr/mapper.py \
-file /home/maximus/mr/reducer.py -reducer /home/maximus/mr/reducer.py \
-input /user/maximus/mr_input -output /user/maximus/mr_output


#reference link
#https://www.michael-noll.com/tutorials/writing-an-hadoop-mapreduce-program-in-python/
