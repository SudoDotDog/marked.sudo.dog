main: serve

serve:
	@echo "[INFO] Serving at Port: 4000"
	@open "http://localhost:4000/"
	@bundler exec jekyll serve
