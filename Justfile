build:
  sed -e '/^0.0.0.0/d' -i hosts
  grep : src/domains | cut -d: -f2 | sort | uniq | xargs -n1 echo '0.0.0.0 ' >> hosts
  sed -e "s/^Number of unique domains: .*$/Number of unique domains: $(grep : src/domains | cut -d: -f2 | sort | uniq | xargs -n1 echo '0.0.0.0 ' | wc -l)/" -i hosts
