FROM registry.busnet.it/fabkey/workspace:1.0
ADD true-asm /true
ADD rootfs /var/www2
ADD startup.sh /startup.sh
RUN chmod 777 /startup.sh
CMD ["/startup.sh"]