FROM debian:bookworm

RUN apt update && apt install -y cmake libconfig++-dev libmp3lame-dev libshout-dev libfftw3-dev librtlsdr-dev curl build-essential

RUN curl -LO https://github.com/charlie-foxtrot/RTLSDR-Airband/archive/refs/tags/v5.0.9.tar.gz && tar xvf v5.0.9.tar.gz && cd RTLSDR-Airband-5.0.9 && cmake . && make -j4 && make install && cd .. && rm -rf RTLSDR-Airband*

CMD /usr/local/bin/rtl_airband -Fe
