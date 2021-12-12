FROM golang:1.16-buster AS build

WORKDIR /build

COPY *.go ./

RUN go build main.go


FROM scratch

COPY --from=build /build/main /main

#USER nonroot:nonroot

ENTRYPOINT ["/main"]