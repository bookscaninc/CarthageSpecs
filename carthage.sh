set -euo pipefail

xcconfig=$(mktemp /tmp/static.xcconfig.XXXXXX)
trap 'rm -f "$xcconfig"' INT TERM HUP EXIT

echo 'EXCLUDED_ARCHS = ""' >> $xcconfig
export XCODE_XCCONFIG_FILE="$xcconfig"
carthage "$@"
