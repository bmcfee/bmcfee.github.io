index: index.tpl *.json
	lazyweb -o index.html index.tpl *.json

data:
	$(MAKE) -C data

all: index data
