#!/bin/bash
temp_file=$(mktemp)

for repo in "$@"; do
    if [ -d "$repo/.git" ]; then
        pushd "$repo" >/dev/null
        git log --all --no-merges --format="%an <%ae>|$(pwd)" >> "$temp_file"
        popd >/dev/null
    fi
done

awk -F'|' '{
    gsub(/^[[:space:]]+|[[:space:]]+$/, "", $1)
    if ($1 != "") {
        if (!(author_repos[$1 FS $2])) {
            authors[$1] = authors[$1] ? authors[$1] RS "  - " $2 : "  - " $2
            author_repos[$1 FS $2] = 1
        }
    }
}
END {
    for (author in authors) {
        print author ":\nFound in:" authors[author] "\n"
    }
}' "$temp_file" | sort

rm "$temp_file"