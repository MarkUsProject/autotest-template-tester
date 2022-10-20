# The VERSION and REQUIREMENTS arguments will always be passed to the image at build time.
# Options for these should be set in the settings schema for this tester (returned by running `docker.cli settings`)
ARG VERSION
ARG REQUIREMENTS

# Add a FROM statement here. For example:
#  FROM python:${VERSION}

ARG REQUIREMENTS

# TODO: fill in the rest of this file to create an image that will run your tests

# An empty /data directory is required by all testers. This is where data volumes will be mounted
RUN mkdir /data

# The code that runs the tests themselves should be copied or mounted to the image as an executable file at /tester
COPY --chmod=0744 ./tester /tester
