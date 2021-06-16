FROM fusuf/whatsasena:latest

RUN git clone https://github.com/lasiyaWA/XtroidGlobal /root/XtroidGlobal
WORKDIR /root/XtroidGlobal/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
