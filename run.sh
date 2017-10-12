#!/bin/bash

# Additional arguments are meant for flags like verbose and dryrun.
# For anything more complicated, just run purple.py by hand.
#
# This will work when run on my boxes where I have p27, p27-gen, and
# p27-src all in the same directory so that ../ gets me on my way to
# the others.

. venv/bin/activate
../p27-gen/p27gen.py --src ../p27-src/site-src --dst site/    \
		     --config ../p27-src/site-config/         \
		     $*
