FROM node:latest
RUN cd /usr/local \
	&& git clone https://github.com/viniciusdacal/socket.io-notify.git \
	&& cd socket.io-notify \
	&& npm install

ENV NOTIFICATION_SECRET NOTIFICATION_SECRET
ENV NOTIFICATION_KEY NOTIFICATION_KEY

EXPOSE 3000

CMD ["/usr/local/bin/node /usr/local/socket.io-notify/index.js"]
