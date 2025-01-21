#!/bin/bash

FROM_DATE=""
TO_DATE=""
AUTHORS=""
REPOS=()

while getopts "f:t:a:" opt; do
   case $opt in
       f) FROM_DATE="$OPTARG" ;;
       t) TO_DATE="$OPTARG" ;;
       a) AUTHORS="$OPTARG" ;;
       ?) echo "Usage: $0 -f FROM_DATE -t TO_DATE -a 'author1@email.com author2@email.com' repo1 repo2..." 
          exit 1 ;;
   esac
done

shift $((OPTIND-1))
REPOS=("$@")

[ -z "$FROM_DATE" ] || [ -z "$TO_DATE" ] || [ -z "$AUTHORS" ] && {
   echo "Error: Missing required parameters"
   echo "Usage: $0 -f FROM_DATE -t TO_DATE -a 'author1@email.com author2@email.com' repo1 repo2..."
   exit 1
}

[ ${#REPOS[@]} -eq 0 ] && REPOS=(.)

export AUTHORS

for repo in "${REPOS[@]}"; do
   [ ! -d "$repo/.git" ] && {
       echo "Error: $repo is not a git repository"
       continue
   }
   (cd "$repo" && git log --since="$FROM_DATE" --until="$TO_DATE" --date=short --numstat --format="format:%ad %aE")
done | awk -v authors="$AUTHORS" '
BEGIN {
   split(authors, author_array, " ")
   for (i in author_array) {
       valid_authors[author_array[i]] = 1
   }
   
   printf "%-12s", "Date"
   for (author in valid_authors) {
       printf " %26s    ", author
   }
   printf "\n%-12s", ""
   for (author in valid_authors) {
       printf " %8s %8s %8s ", "Added", "Mod", "Del"
   }
   printf "\n%-12s", "------------"
   for (author in valid_authors) {
       printf " %8s %8s %8s ", "--------", "--------", "--------"
   }
   printf "\n"
}

/^[0-9]{4}-[0-9]{2}-[0-9]{2}/ {
   date=$1
   $1=""
   author=substr($0,2)
}

/^[0-9]/ && author in valid_authors {
   if ($1 != "-" && $2 != "-") {
       added[date,author] += $1
       modified[date,author] += ($1 + $2)/2
       deleted[date,author] += $2
       dates[date] = 1
   }
}

END {
   n = asorti(dates, sorted_dates)
   for (i = 1; i <= n; i++) {
       d = sorted_dates[i]
       printf "%-12s", d
       for (author in valid_authors) {
           if (added[d,author] == 0 && modified[d,author] == 0 && deleted[d,author] == 0) {
               printf " %8s %8s %8s ", "-", "-", "-"
           } else {
               printf " %8d %8d %8d ", added[d,author], modified[d,author], deleted[d,author]
           }
       }
       printf "\n"
   }
}' | sort -r