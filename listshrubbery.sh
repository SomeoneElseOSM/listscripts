# ----------------------------------------------------------------------------
# listshrubbery.sh $1 $2 $3
# What have peopleposted about to OSM mailing list $1 in year $2 month $3 ?
# Requires lynx (command line browser)
#
# Example usage:
# listshrubbery.sh tagging 2021 February
# ----------------------------------------------------------------------------
lynx -width=1024 --dump "https://lists.openstreetmap.org/pipermail/${1}/${2}-${3}/date.html#start" | grep -i "\[.*${1}\]" | sed "s/.*${1}\]//i" | sed "s/  .*$//" | sort | uniq -c | sort -n -r | grep -i shrubbery | head -20
#
