#!/bin/sh

MQTT_BROKER="127.0.0.1"
MQTT_PORT="1883"

BASE_TOPIC="network/upnp"

MOSQUITTO_EXEC="/usr/bin/mosquitto_pub"

OP="${1}"
EPORT="${2}"
PROTO="${3}"
IADDR="${4}"
IPORT="${5}"
DESC="${6}"
TIME_STAMP="`date -Iseconds`"

TOPIC="${BASE_TOPIC}/${EPORT}"

PAYLOAD="{
  \"operation\": \"${OP}\",
  \"wanPort\": \"${EPORT}\",
  \"lanAddr\": \"${IADDR}\",
  \"lanPort\": \"${IPORT}\",
  \"description\": \"${DESC}\",
  \"timestamp\": \"${TIME_STAMP}\"
}"

${MOSQUITTO_EXEC} \
  -h ${MQTT_BROKER} \
  -p ${MQTT_PORT} \
  -t "${TOPIC}" \
  -m "${PAYLOAD}"

exit $?
