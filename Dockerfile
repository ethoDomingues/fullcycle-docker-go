FROM golang AS adenor

WORKDIR /root

COPY ./main.go .

RUN go build -o altair main.go

FROM hello-world

COPY --from=adenor /root/altair .

ENTRYPOINT [ "./altair" ]
