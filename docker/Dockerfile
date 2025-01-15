FROM public.cr.seqera.io/wave/s5cmd:v2.2.2
RUN apt-get update && apt-get install -y --no-install-recommends \
  curl unzip \
  && rm -rf /var/lib/apt/lists/*
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
 unzip awscliv2.zip && ./aws/install && rm -rf aws awscliv2.zip
