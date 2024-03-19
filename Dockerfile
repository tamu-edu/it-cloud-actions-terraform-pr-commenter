ARG TERRAFORM_VERSION=1.4.6
FROM hashicorp/terraform:${TERRAFORM_VERSION}

RUN apk add --no-cache -q \
    bash \
    curl \
    perl \
    jq \
    && apk add --upgrade curl

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
