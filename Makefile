.PHONY: clean checkout-index

default: clean checkout-index

clean:
	rm -rf output

checkout-index:
	git clone https://discobingolingo@github.com/qeffect/youtube-index.git output/youtube-index

generate:
	youtube-archiver-server generate --config-path "output/youtube-index/serve.yml" --output "output/web"