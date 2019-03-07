#!/bin/sh

set -e

psql -d $POSTGRES_DB -c 'CREATE EXTENSION IF NOT EXISTS postgis;'
psql -d $POSTGRES_DB -c 'CREATE EXTENSION IF NOT EXISTS postgis_topology;'
