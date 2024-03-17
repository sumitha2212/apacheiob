FROM ubi8
RUN yum  install httpd -y
CMD systemctl enable httpd
CMD systemctl start httpd
RUN echo "<html> <head> IOB OCP Training 2024</head> <body> <h1>Welcome to IOB Chennai</h1> </body> </html>" >/var/www/html/index.html
EXPOSE 80/tcp
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

