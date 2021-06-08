FROM broadinstitute/gatk:4.1.4.0

LABEL gatk.version="4.1.4.0"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    git \
    curl

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
  unzip awscliv2.zip && \
  ./aws/install

RUN git clone https://github.com/lh3/seqtk.git && cd seqtk && make install

ADD src/scripts/aws_fetch_and_run.sh /usr/local/bin/aws_fetch_and_run.sh
ADD src/scripts/azure_fetch_and_run.sh /usr/local/bin/azure_fetch_and_run.sh
WORKDIR /tmp