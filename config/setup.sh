#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath -m .)"
DESTINATION="$(realpath -m ~/.config)"

info "Configuring applications..."

find . -name "*.*ml" | while read fn; do
    fn=$(basename $fn)
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

success "Finished configuring applications."
