FROM python:3.7-alpine3.9

# Copy static files from build image
COPY --from=eo:build /everfree-outpost/dist/auth /eo-auth
COPY requirements.txt /eo-auth/requirements.txt
WORKDIR /eo-auth

ENV \
    EOAUTH_DB_CONNSTR=auth.db \
    EOAUTH_DB_TYPE=sqlite \
    EOAUTH_FLASK_DEBUG=0 \
    EOAUTH_FLASK_SECRETKEY=changeme \
    EOAUTH_SECURE=0 \
    EOAUTH_SIGNINGKEY=changeme \
    EOAUTH_WWW_ALLOWEDORIGIN=http://localhost:8889 \
    EOAUTH_WWW_REDIRURL=http://localhost:8889/launcher/serverlist.html

# bcrypt and PyNaCl deps
RUN apk add gcc musl-dev libffi-dev make
# TODO: How much of the above is actually a runtime dependency? Maybe we can trash it

RUN pip install -r requirements.txt

CMD ["python3", "/eo-auth/server.py"]
