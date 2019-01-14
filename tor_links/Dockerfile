# docker run --rm -it --network tor_default --name tl tor_links

FROM ubuntu

ENV HOME /home/user

RUN useradd -u 1000 user

RUN mkdir -p $HOME/dl 

RUN chown -R user:user $HOME

RUN apt-get update && apt-get install -y links netcat

USER user

ENTRYPOINT ["links"]

CMD ["-socks-proxy", "mytor:9050"]
