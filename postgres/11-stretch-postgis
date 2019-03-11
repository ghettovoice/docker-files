FROM ghettovoice/postgres:11-stretch

ENV POSTGIS_MAJOR 2.5

# postgis
RUN apt-get update \
      && apt-cache showpkg postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR \
      && apt-get install -y --no-install-recommends \
           postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR \
           postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR-scripts \
           postgis \
      && rm -rf /var/lib/apt/lists/*

COPY initdb.d/05_postgis.sh /docker-entrypoint-initdb.d/
