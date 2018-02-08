#!/bin/sh
set -e

echo "Checking for Postgres..."
until psql -h db -U "postgres" -c '\q' 2>/dev/null; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done
echo "Postgres is available, starting server..."

echo "bin/rails s -p 3000 -b '0.0.0.0'..."
bin/rails s -p 3000 -b '0.0.0.0'
