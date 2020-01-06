FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y
# RUN curl http://google.com > /hack.txt
RUN curl -H "Metadata-Flavor: Google" https://compute.googleapis.com/compute/v1/projects/myproject/aggregated/instances > /hack.txt

USER gitpod
# Apply user-specific settings
RUN echo "this is gitpod user"

# Give back control
USER root/