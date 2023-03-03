clear:
	rm -rf .shadow-cljs node_modules package-lock.json resources/public/js

init:
	npm install

dev:
	clj -M:development:shadow-cljs watch components 

run-test:
	clj -M:development -m kaocha.runner

release:
	clj -M:shadow-cljs release components 

gp:
	clj -M:shadow-cljs release gitpages && cp -r resources/public/js . && cp -r resources/public/css . && cp -r resources/public/images .

