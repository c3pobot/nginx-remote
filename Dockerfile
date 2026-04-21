FROM registry.gitlab.com/swgoh-client/swgoh-client:phase3-refactor AS builder

FROM alpine:latest
LABEL org.opencontainers.image.source=https://github.com/c3pobot/swgoh-client-remote
RUN apk add curl
COPY --from=builder ./swgoh-client .
CMD ["/swgoh-client"]
