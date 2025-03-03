FROM library/ubuntu:jammy
RUN apt update && \
    DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y gnuradio sudo cmake libitpp-dev libpcap-dev python3-pip git libsndfile1-dev gnuradio gnuradio-dev gr-osmosdr librtlsdr-dev libuhd-dev libhackrf-dev libitpp-dev libpcap-dev liborc-dev cmake git build-essential pkg-config doxygen clang-format python3-pybind11 python3-numpy python3-waitress python3-requests python3-kafka gnuplot-x11 libsndfile1-dev libspdlog-dev && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /src && \
    cd /src && \
    git clone https://github.com/boatbod/op25 && \
    cd op25 && \
    git checkout -b gr310 && \
    git pull origin gr310 && \
    rm -rf build && \
    mkdir build && \
    cd build && \
    cmake ../ && \
    make -j5 && \
    make install && \
    ldconfig

COPY ./tk_p25.py /src/op25/gr-op25_repeater/apps/

WORKDIR /src/op25/op25/gr-op25_repeater/apps

CMD ./startup.sh

