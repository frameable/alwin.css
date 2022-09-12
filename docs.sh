cat <<EOF
<!doctype html>
<meta charset="utf-8">
<link rel="stylesheet" href="alwin.css">
<style>
  body {
    font-family: Helvetica, Roboto, sans-serif;
    max-width: 1140px;
    margin: auto;
    padding: 8px 3%;
    background: #f3f5ff;
  }
  dl {
    display: grid;
    grid-template-columns: 1fr 2fr;
    margin-bottom: 24px;
    background: white;
    padding: 24px;
    border-radius: 3px;
    box-shadow: 0 1px 3px -2px #0008;
  }
  dl:empty {
    display: none;
  }
  dl > * {
    padding: 6px;
    border-bottom: 1px solid #1231;
    margin: 0;
    font-family: Fira Code VF,ui-monospace,SFMono-Regular,Menlo,Monaco,Consolas,Liberation Mono,Courier New,monospace;
    line-height: 1.5;
    font-size: 14px;
  }
  dl > *:nth-last-child(-n+2) {
    border: none;
  }
  dt {
    font-weight: 600;
    color: rgb(14 165 233);
  }
  dd {
    color: rgb(79 70 229);
  }
</style>

<header class="flex items-center">
  <h1>alwin.css</h1>
</header>
EOF

echo '<dl>'"$(cat - | sed -r 's/^([^ ]+) \{ (.+?) \}/<dt>\1<\/dt><dd>\2<\/dd>/' | sed 's/\; /\;<br>/g' | sed 's/^$/<\/dl><dl>/')"'</dl>'

