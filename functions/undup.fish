function undup --description 'Remove duplicates from a list'
  set -l output
  for i in $argv
    if not contains -- $i $output
      set output $output $i
    end
  end
  for item in $output
    echo $item
  end
end
