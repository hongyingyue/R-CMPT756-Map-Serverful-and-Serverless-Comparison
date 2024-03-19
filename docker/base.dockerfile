FROM ubuntu:23.10

RUN apt update && apt upgrade -y

RUN apt install -y      \
    protobuf-compiler   \
    python3             \
    python3-numpy       \
    python3-boto3       \
    python3-flask       \
    python3-flask-cors  \
    python3-protobuf    \
    python3-psycopg2    \
    python3-pip         \
    wget                \
    zip

WORKDIR /home

# Downloads the codebase.
ADD https://api.github.com/repos/hongyingyue/R-CMPT756-Map-Serverful-and-Serverless-Comparison/commits?per_page=1 latest_commit
RUN wget https://codeload.github.com/hongyingyue/R-CMPT756-Map-Serverful-and-Serverless-Comparison/zip/refs/heads/main
RUN unzip main && rm main
RUN mv R-CMPT756-Map-Serverful-and-Serverless-Comparison-main codebase

WORKDIR /home/codebase/src/mutation
RUN protoc --python_out=proto_py --proto_path=proto  `find proto -name *.proto`
