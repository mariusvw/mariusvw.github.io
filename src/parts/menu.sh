read -r -d '' _menu <<'EOF'
  <li>[ <a href="%s">%s</a> ]</li>
EOF

echo -n '<ul id="menu">'
# printf "$_menu" 'https://mariusvw.github.io' 'View GitHub page'
printf "$_menu" '/' 'View GitHub page'
printf "$_menu" 'https://github.com/mariusvw' 'View GitHub profile'
printf "$_menu" 'https://kitara.nl' 'Company Website'
printf "$_menu" 'https://mariusvw.com' 'Personal Blog'
# printf "$_menu" 'https://mariusvw.github.io/subnet.html' 'Subnet Calc'
printf "$_menu" '/subnet.html' 'Subnet Calc'
echo '</ul>'
