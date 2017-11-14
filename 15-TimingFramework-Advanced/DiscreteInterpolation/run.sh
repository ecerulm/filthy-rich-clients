#!/bin/bash
set -euxo pipefail
# e : fail as soon as a command fails, don't continue
# u : fail if nonexisting variable can't be expanded
# x : echo each line as it's executed
# -o pipefail: fail if a command in a pipe returns status != 0

mvn package
java -cp target/DiscreteInterpolation-1.0-SNAPSHOT.jar:lib/TimingFramework-0.55.jar DiscreteInterpolation
