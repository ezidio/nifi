FROM apache/nifi
COPY ./postgresql-42.2.9.jar lib/
COPY ./ojdbc8.jar lib/
COPY ./nifi.jks /home/nifi/
COPY ./clientkeystore /home/nifi/
COPY ./client.csr /home/nifi/