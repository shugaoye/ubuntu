FROM shugaoye/ubuntu:java

LABEL maintainer="shugaoye@yahoo.com"

RUN apt-get update && \
	apt-get install -y python3.8 python3-pip && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*


RUN pip3 install notebook

ENTRYPOINT ["/root/docker_entrypoint.sh"]
