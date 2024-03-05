function guess
{
  local count=$(ls . | wc -w)
  local condition=1
  local ans=0

  while [[ $condition -eq 1 ]]
  do
      echo "how many files in the directory?"
      read ans

      if [[ $ans -eq $count ]]
          then condition=0
          echo "you are correct"
      elif [[ $ans -lt $count ]]
          then
          echo "wrong, more than that"
      else
          echo "wrong, less than that"
      fi
  done
}

guess
