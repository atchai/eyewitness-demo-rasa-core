# EYEWITNESS DEMO RASA CORE - PRODUCTION DOCKERFILE

FROM rasa/rasa_nlu:0.11.3-spacy
MAINTAINER Atchai <enquiries@atchai.com>

ENV AWS_ACCESS_KEY_ID=AKIAJYIWY5U4SJCIEUMA
ENV AWS_SECRET_ACCESS_KEY=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

# Copy in our custom config.
COPY ./app/config/config.production.json /app/config.json
COPY ./app/interpreters/news.md /app/data/news.md

# Install dependencies required for AWS S3.
RUN pip install boto3
