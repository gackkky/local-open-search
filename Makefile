.PHONY: setup
setup:
	$(MAKE) build-sudachi
	curl -o sudachi-dictionary-20240409-core.zip http://sudachi.s3-website-ap-northeast-1.amazonaws.com/sudachidict/sudachi-dictionary-20240409-core.zip
	unzip -p sudachi-dictionary-20240409-core.zip sudachi-dictionary-20240409/system_core.dic > system_core.dic
	rm sudachi-dictionary-20240409-core.zip

.PHONY: build-sudachi
build-sudachi:
	git clone https://github.com/WorksApplications/elasticsearch-sudachi.git
	cd elasticsearch-sudachi && \
	./gradlew -PengineVersion=os:2.13.0 build && \
	cp build/distributions/opensearch-2.13.0-analysis-sudachi-3.1.1-SNAPSHOT.zip ../ && \
	cd .. && \
	rm -rf elasticsearch-sudachi
