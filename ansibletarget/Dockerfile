FROM centos 

RUN yum -y install openssh-server passwd 


RUN useradd ansible && \
    echo "1234567" | passwd ansible --stdin && \
    mkdir /home/ansible/.ssh        && \
        chmod 700 /home/ansible/.ssh

COPY sshkey.pub /home/ansible/.ssh/authorized_keys

RUN chown ansible:ansible -R /home/ansible/.ssh/ && \
    chmod 600 /home/ansible/.ssh/authorized_keys && \
        mkdir /tmp/scripts && \
        chmod 777 /tmp/scripts
RUN echo "ansible  ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
RUN rm -rf /run/nologin
RUN ssh-keygen -A

CMD /usr/sbin/sshd -D
 
#CMD sleep 1000
