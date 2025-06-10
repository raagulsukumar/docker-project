commands.sh


 sudo docker image build \
  -t sloopstash/redis-linear:v7.2.1 \ # Name of the resultant OCI image
  -f image/redis/7.2.1/amazon-linux-2.dockerfile \ # Dockerfile path.
  image/redis/7.2.1/context # Build context diectory.
  
   sudo docker image build -t sloopstash/redis-linear:v7.2.1  -f image/redis/7.2.1/amazon-liunx-2-linear.dockerfile  image/redis/7.2.1/context


#to validate the image
   sudo docker container run -ti --rm sloopstash/redis-linear:v7.2.1 /bin/bash


   sudo docker image build -t sloopstash/redis-multi-stage:v7.2.1 -f image/redis/7.2.1/amazon-linux-2-multi-stage.dockerfile image/redis/7.2.1/context --no-cache


   sudo docker container run -ti --rm sloopstash/redis-multi-stage:v7.2.1 /bin/bash