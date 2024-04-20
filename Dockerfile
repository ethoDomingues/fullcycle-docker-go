FROM hello-world

WORKDIR /root

COPY ./main /root/

ENTRYPOINT [ "./main" ]
