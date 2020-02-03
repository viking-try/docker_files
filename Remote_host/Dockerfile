FROM centos:7 
 
RUN yum -y install openssh-server 
RUN yum -y install initscripts 
RUN yum -y install passwd 
RUN useradd remote_user && \
    echo "1234567" | passwd remote_user --stdin && \
    mkdir /home/remote_user/.ssh	&& \
	chmod 700 /home/remote_user/.ssh

COPY sshkey.pub /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user -R /home/remote_user/.ssh/ && \
    chmod 600 /home/remote_user/.ssh/authorized_keys && \
	mkdir /tmp/scripts && \
	chmod 777 /tmp/scripts

RUN yum -y install mysql
RUN yum -y install python36 

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
    python3 get-pip.py && \
    pip install awscli --upgrade  

RUN sshd-keygen 
	
CMD /usr/sbin/sshd -D 	
 

