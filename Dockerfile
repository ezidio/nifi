FROM apache/nifi
COPY --chown=nifi:nifi ./postgresql-42.2.9.jar lib/
COPY --chown=nifi:nifi ./ojdbc8.jar lib/
COPY --chown=nifi:nifi ./nifi.jks /home/nifi/
COPY --chown=nifi:nifi ./clientkeystore /home/nifi/
COPY --chown=nifi:nifi ./client.csr /home/nifi/
RUN chmod 774 /home/nifi/nifi.jks