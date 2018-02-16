FROM tradebot:latest

RUN tradebot update
RUN tradebot install

WORKDIR /hitbtc