git rev-list --all | while read commit; do
   echo "Commit: $commit"
   git cat-file -p "$commit" | grep '^tree\|^parent'
   git ls-tree -r "$commit"
   echo
 done
