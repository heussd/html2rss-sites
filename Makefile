html2rss:
	mkdir -p rss 
	for f in *.yml; do \
		echo "Generating RSS feed from $$f"; \
		html2rss feed "$$f" > rss/$${f%.yml}.xml; \
	done