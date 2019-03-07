#!/bin/sh

set -e

psql -d $POSTGRES_DB -c 'CREATE EXTENSION IF NOT EXISTS intarray;'
psql -d $POSTGRES_DB -c 'CREATE EXTENSION IF NOT EXISTS ltree;'
psql -d $POSTGRES_DB -c 'CREATE EXTENSION IF NOT EXISTS "uuid-ossp";'
psql -d $POSTGRES_DB -c 'CREATE EXTENSION IF NOT EXISTS btree_gist;'
