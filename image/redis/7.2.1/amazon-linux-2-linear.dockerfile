#using this source OCI image 
FROM sloopstash/base:v1.1.1

#switch to /tmp dir
WORKDIR /tmp

#download and extract redis
RUN wget http://download.redis.io/releases/redis-7.2.1.tar.gz \
 && tar xvzf redis-7.2.1.tar.gz 

# Switch to Redis source directory.
WORKDIR redis-7.2.1
 
# Compile and install Redis.
RUN make distclean \
&& make \
&& make install