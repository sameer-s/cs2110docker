# Dockerfile for patching the container in the middle of the semester. Anything
# appended here will mean students don't have to waste too much space with
# uncached rebuilt layers when pulling the new container. Anything done in here
# should be patched back into the main image at the end of the semester.

FROM gtcs2110/cs2110docker:1.1.0

# Temporarily go back to root
USER 0

ADD ./fixup.sh $INST_SCRIPTS/
RUN chmod a+x $INST_SCRIPTS/fixup.sh && $INST_SCRIPTS/fixup.sh

# Go back to unprivileged user
USER 1000

