data/shakespeare_cw.txt:
	curl -o data/shakespeare_cw.txt http://www.gutenberg.org/files/100/100-0.txt && \
	tail -n +137 data/shakespeare_cw.txt > data/no_contents_scw.txt

