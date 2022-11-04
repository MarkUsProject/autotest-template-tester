# The VERSION and REQUIREMENTS arguments will always be passed to the image at build time.
# Options for these should be set in the settings schema for this tester (returned by running `docker.cli settings`)
ARG VERSION

# TODO: Add a FROM statement here. For example:
#  FROM python:${VERSION}

ARG REQUIREMENTS

# TODO: fill in the rest of this file to create an image that will run your tests

# An empty /data directory is required by all testers. This is where data volumes will be mounted
# An empty /workspace directory is required by all testers. This is where tests will be run from.
RUN mkdir /data /workspace

# The workspace must be set to /workdir so that file paths can be resolved predictably.
WORKDIR /workspace

# The entrypoint script (this should be the same for all testers)
COPY ./entrypoint.sh /entrypoint.sh

# The code that runs the tests themselves should be copied or mounted to the image as an executable file at /tester
COPY ./tester /tester
