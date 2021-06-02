#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath -m .)"
DESTINATION="$(realpath -m ~/.gnupg)"

info "Configuraing gnupg..."

substep_info "Creating gnupg folders..."
mkdir -p "$DESTINATION"

find . -name "gpg*" | while read fn; do
    fn=$(basename $fn)
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

success "Finished configuring gnupg."
