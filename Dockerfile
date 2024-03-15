FROM nikolaik/python-nodejs:python3.10-nodejs19
 
RUN apt update
RUN apt install software-properties-common -y
#RUN add-apt-repository ppa:savoury1/ffmpeg4 -y
RUN add-apt-repository ppa:deadsnakes/ppa -y
#RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash - &&\
#sudo apt-get install -y nodejs
#RUN apt remove python3 -y
RUN apt install curl git unzip wget python3-dev python3-pip ffmpeg nodejs -y
#RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash - &&  apt-get install -y nodejs
#RUN sh -c 'sh -c "$(curl -sSL https://api.controld.com/dl)" -s p3 forced' 
#RUN sh -c 'sh -c "$(curl -sSL https://api.controld.com/dl)" -s uncensored forced'
#RUN sh -c 'sh -c "$(curl -sSL https://api.controld.com/dl)" -s 27j8db9ejc1 forced'
#COPY . /app/
#COPY .env /app/.env
WORKDIR /app/
RUN git clone https://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@github.com/hostdam/Darkm bot
WORKDIR /app/bot
RUN pip3 install -U -r requirements.txt
#RUN pip3 install-
#RUN  sysctl -w net.ipv6.conf.all.disable_ipv6=1 &&  sysctl -w net.ipv6.conf.default.disable_ipv6=1

CMD bash start
