#!/usr/bin/env bash

set -euo pipefail

GIT_REPO="https://code.call-cc.org/git/chicken-core.git"
TOOL_NAME="chicken"
TOOL_TEST="chicken -help"

fail() {
	echo -e "asdf-$TOOL_NAME: $*"
	exit 1
}

curl_opts=(-fsSL)

sort_versions() {
	sed 'h; s/[+-]/./g; s/.p\([[:digit:]]\)/.z\1/; s/$/.z/; G; s/\n/ /' |
		LC_ALL=C sort -t. -k 1,1 -k 2,2n -k 3,3n -k 4,4n -k 5,5n | awk '{print $2}'
}

list_git_tags() {
	git ls-remote --tags --refs "$GIT_REPO" | grep -o 'refs/tags/.*' | cut -d/ -f3-
}

list_all_versions() {
	# Change this function if CHICKEN has other means of determining installable versions.
	list_git_tags
}

download_release() {
	local version filename url
	version="$1"
	filename="$2"

	url="https://code.call-cc.org/releases/${version}/chicken-${version}.tar.gz"

	echo "* Downloading CHICKEN release $version..."
	curl "${curl_opts[@]}" -o "$filename" -C - "$url" || fail "Could not download $url"
}

install_version() {
	local install_type="$1"
	local version="$2"
	local install_path="${3%/bin}"

	if [ "$install_type" != "version" ]; then
		fail "asdf-$TOOL_NAME supports release installs only"
	fi

	(
		mkdir -p "$install_path"

		cd $ASDF_DOWNLOAD_PATH
		make PREFIX="${install_path}"
		make PREFIX="${install_path}" install

		# TODO: Assert CHICKEN executable exists.
		local tool_cmd
		tool_cmd="$(echo "$TOOL_TEST" | cut -d' ' -f1)"
		test -x "$install_path/bin/$tool_cmd" || fail "Expected $install_path/$tool_cmd to be executable."

		echo "$TOOL_NAME $version installation was successful!"
	) || (
		rm -rf "$install_path"
		fail "An error occurred while installing $TOOL_NAME $version."
	)
}
