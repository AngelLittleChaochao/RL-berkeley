FROM ubuntu

MAINTAINER Chaochao Tang <chaotang0281@gmail.com>

RUN apt-get update
RUN apt-get -y install python3.6 python3-pip
RUN pip3 install tensorflow

# for save
RUN pip3 install h5py

# install tflearn and keras:
RUN pip3 install tflearn==0.3.2
RUN pip3 install keras==2.0.8

# install NLP packages:
RUN pip3 install nltk==3.2.4
RUN pip3 install gensim==2.3.0

# install Reinforcement Learning packages:
RUN pip3 install gym==0.9.4

# install open gl for visualization
RUN apt-get -y install python-opengl
RUN apt-get -y install xvfb

WORKDIR '/usr/src/'