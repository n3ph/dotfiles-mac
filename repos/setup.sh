#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

COMMENT=\#*
REPO_PATH=$(realpath -m ~/Repositories)

find * -name "*.list" | while read fn; do
    folder="${fn%.*}"

    info "Cloning $folder repositories..."

    substep_info "Creating $folder folder..."
    mkdir -p "$REPO_PATH/$folder"
    while read -r repo; do
        echo $repo
        repo_str=$repo
        if [[ $repo_str == $COMMENT ]]; then
            continue
        else
            pushd "$REPO_PATH/$folder" &> /dev/null
            if [[ "${repo_str%';'*}" != "$repo_str" ]]; then
                repo="${repo_str%';'*}"
                git clone "$repo" "${repo_str#*';'}"
            else
                git clone "$repo"
            fi
            case $? in
                128)
                    substep_success "$repo already exists."
                    ;;
                0)
                    substep_success "Cloned $repo."
                    ;;
                *)
                    substep_error "Failed to clone $repo."
                    ;;
                esac
            popd &> /dev/null
        fi
    done < "$fn"
    success "Finished cloning $folder repositories."
done
