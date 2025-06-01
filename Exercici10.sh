#!/bin/bash

SCHOOL_URL="https://agora.xtec.cat/ies-sabadell/"

echo "Checking internet connection to $SCHOOL_URL ..."

until curl --head --silent --fail "$SCHOOL_URL" > /dev/null; do
  echo "Warning: No internet connection to $SCHOOL_URL. Retrying in 5 seconds..."
  sleep 5
done

echo "Connection established! Opening the school's homepage..."

firefox "$SCHOOL_URL" &

exit 0
