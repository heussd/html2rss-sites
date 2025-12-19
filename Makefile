all: \
	ymlgen \
	autogen

autogen:
	html2rss auto https://www.anthropic.com/research > rss/anthropic-research.xml

ymlgen:
	mkdir -p rss 
	for f in sites/*.yml; do \
		echo "Generating RSS feed from $$f"; \
		name=$$(basename "$$f" .yml); html2rss feed "$$f" > rss/$$name.xml; \
	done
