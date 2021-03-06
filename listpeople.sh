# ----------------------------------------------------------------------------
# listpeople.sh $1 $2 $3
# Who has posted to OSM mailing list $1 in year $2 month $3 ?
# Example "listpeople.sh tagging 2020 November"
# Requires lynx (command line browser)
#
# Example usage:
# listpeople.sh tagging 2020 May
# ----------------------------------------------------------------------------
lynx -width=1024 --dump "https://lists.openstreetmap.org/pipermail/${1}/${2}-${3}/date.html#start" | grep -i "\[.*${1}\]" | sed "s/.*  //" | sort | uniq -c | sort -n -r | head -20
#
