horgix.eu/%::
	http PUT https://${MARATHON_URL}/v2/apps/`basename $@` < $@.json
