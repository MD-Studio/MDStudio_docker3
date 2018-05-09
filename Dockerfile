FROM python:3.6-stretch

# Service user
RUN useradd mdstudio && mkdir /home/mdstudio && chown mdstudio:mdstudio /home/mdstudio

COPY . /home/mdstudio

WORKDIR /home/mdstudio

RUN git clone git://github.com/MD-Studio/MDStudio.git --branch v1 --single-branch

RUN  pip install -e MDStudio/mdstudio
