# build from the forest Docker image
FROM rigetti/forest:2.17.0

# install requirements for latex generation
RUN apt-get update && apt-get -yq dist-upgrade && \
    apt-get install --no-install-recommends -yq \
    ghostscript imagemagick texlive-latex-base texlive-latex-extra && \
    rm -rf /var/lib/apt/lists/*

# install requirements for running pyQuil tutorial notebooks
RUN pip install "pyquil[tutorials]"

# install jupyter notebook and jupyter lab
RUN pip install --no-cache-dir notebook==6.0.1 
