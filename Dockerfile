FROM opensearchproject/opensearch:2.13.0
COPY opensearch-2.13.0-analysis-sudachi-3.1.1-SNAPSHOT.zip \
    opensearch-2.13.0-analysis-sudachi-3.1.1-SNAPSHOT.zip
RUN /usr/share/opensearch/bin/opensearch-plugin install --batch \
    file:opensearch-2.13.0-analysis-sudachi-3.1.1-SNAPSHOT.zip

COPY system_core.dic config/sudachi/system_core.dic
