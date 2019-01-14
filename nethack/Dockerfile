FROM debian:sid-slim



ENV HOME /home/user
RUN useradd -u 1000 user
RUN mkdir -p $HOME/dl 
RUN chown -R user:user $HOME

RUN apt-get update && apt-get install -y nethack-console

USER user

CMD ["/usr/games/nethack"]
