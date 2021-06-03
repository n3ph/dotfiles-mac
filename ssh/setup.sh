#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath -m .)"
DESTINATION="$(realpath -m ~/.ssh)"

info "Configuraing ssh..."

substep_info "Creating ssh folders..."
mkdir -p "$DESTINATION"

find . ! -name "setup.sh" ! -name "." | while read fn; do
    fn=$(basename $fn)
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

success "Finished configuring ssh."
