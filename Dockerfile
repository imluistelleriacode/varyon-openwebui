FROM ghcr.io/open-webui/open-webui:main

# Copy custom CSS
COPY custom.css /app/build/static/custom.css

# Inject CSS into the main HTML file
RUN sed -i '/<\/head>/i <link rel="stylesheet" href="/static/custom.css">' /app/build/index.html
