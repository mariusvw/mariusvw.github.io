cat <<EOF
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/print.css" media="print" />
EOF

read -r -d '' page_style <<'EOF'
<link rel="stylesheet" type="text/css" href="css/pages/%s.css" media="screen" />
EOF

if [ -f "$root/css/pages/$page.css" ]
then
  printf "$page_style" $page
fi

cat <<EOF
    <script src="js/head.js"></script>
    <title>mariusvw.github.io by Marius van Witzenburg :-)</title>
  </head>
  <body>
    <header>
      <div class="container">
        <h1>mariusvw.github.io</h1>
        <h2></h2>
        <section id="links">
EOF

. $root/src/parts/menu.sh

cat <<EOF
        </section>
      </div>
    </header>
    <hr />
    <div class="container">
      <section id="main_content">
EOF

. $root/src/pages/$page.sh

cat <<EOF
      </section>
    </div>
    <hr />
    <footer>
      <div class="heartbeat"></div>
    </footer>
    <script src="js/body.js"></script>
EOF

read -r -d '' page_script <<'EOF'
<script src="js/pages/%s.js"></script>
EOF

if [ -f "$root/js/pages/$page.js" ]
then
  printf "$page_script" $page
fi

cat <<EOF
  </body>
</html>
EOF
