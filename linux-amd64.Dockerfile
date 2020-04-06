FROM hotio/base@sha256:75b16518487eb5cf1b65f55132938dbee7f954d82b8c13d4b0175780ada14ff7

ARG DEBIAN_FRONTEND="noninteractive"

EXPOSE 7337

ARG TRACKARR_URL=https://gitlab.com/cloudb0x/trackarr/uploads/1b2791246567b78438f415ff9cf3053a/trackarr_v1.6.4-dev_linux_amd64.tar.gz

# install trackarr
RUN curl -fsSL "${TRACKARR_URL}" | tar xzf - -C "${APP_DIR}" && \
    chmod -R u=rwX,go=rX "${APP_DIR}" && chmod 755 "${APP_DIR}/trackarr"

COPY root/ /
