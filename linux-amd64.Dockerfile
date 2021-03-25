FROM hotio/base@sha256:231ec84a2cd1f6b38387df38fe6f61c5b5d8c19b5f433c658bb985966703450c

EXPOSE 7337

ARG URL_AMD64
RUN curl -fsSL "${URL_AMD64}" | tar xzf - -C "${APP_DIR}" && \
    chmod -R u=rwX,go=rX "${APP_DIR}" && chmod 755 "${APP_DIR}/trackarr"

COPY root/ /
