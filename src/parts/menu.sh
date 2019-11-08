read -r -d '' _menu <<'EOF'
  <li>[ <a href="%s">%s</a> ]</li>
EOF

echo -n '<ul id="menu">'
# printf "$_menu" 'https://mariusvw.github.io' 'View GitHub page'
printf "$_menu" '/' 'Home'
printf "$_menu" 'https://github.com/mariusvw' 'GitHub profile'
printf "$_menu" 'https://github.com/mariusvw?tab=repositories&q=&type=source' 'GitHub projects'
printf "$_menu" 'https://kitara.nl' 'Company Website'
# printf "$_menu" 'https://mariusvw.com' 'Personal Blog'
printf "$_menu" '/subnet.html' 'Subnet Calc'
echo '</ul>'
