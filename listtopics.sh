# ----------------------------------------------------------------------------
# listpeople.sh $1 $2 $3
# What have peopleposted about to OSM mailing list $1 in year $2 month $3 ?
# Requires lynx (commad line browser)
#
# Example usage:
# listtopics.sh tagging 2020 May
# ----------------------------------------------------------------------------
lynx -width=1024 --dump "https://lists.openstreetmap.org/pipermail/${1}/${2}-${3}/date.html#start" | grep -i "\[.*${1}\]" | sed "s/.*${1}\]//i" | sed "s/  .*$//" | sort | uniq -c | sort -n -r | head -20
#
