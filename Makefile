build: 
	jupyter-book clean .
	jupyter-book build .
deploy: build
	netlify deploy --dir=_build/html --prod
