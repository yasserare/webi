#!/bin/sh

set -e
set -u



    pkg_dst_cmd="$HOME/.local/bin/quick-lint-js"
    pkg_dst="$pkg_dst_cmd"

    pkg_src_cmd="$HOME/.local/opt/quick-lint-js-v$WEBI_VERSION/bin/quick-lint-js"
    pkg_src_dir="$HOME/.local/opt/quick-lint-js-v$WEBI_VERSION"
    pkg_src="$pkg_src_cmd"



pkg_install() {
    mkdir -p "$(dirname "$pkg_src_cmd")"
    mv ./quick-lint-js/bin/quick-lint-js "$pkg_src_cmd"
}

pkg_get_current_version() {
    quick-lint-js --version 2> /dev/null | head -n 1 | cut -d' ' -f3
}

