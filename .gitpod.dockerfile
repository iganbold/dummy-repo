FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y
# RUN curl http://google.com > /hack.txt
RUN curl -H "Metadata-Flavor: Google" http://metadata.google.internal/computeMetadata/v1/project/ > /hack.txt

USER gitpod
# Apply user-specific settings
RUN echo "this is gitpod user"

# Give back control
USER root/