cat <<EOF
<!doctype html>
<style>
  body {
    font-family: Helvetica, Roboto, sans-serif;
    max-width: 1140px;
    margin: auto;
    padding: 8px 2%; 
  }
  dl {
    display: grid;
    grid-template-columns: 1fr 2fr;
  }
  dl > * { 
    padding: 6px;
    border-bottom: 1px solid #1231;
    margin: 0;
    font-family: Fira Code VF,ui-monospace,SFMono-Regular,Menlo,Monaco,Consolas,Liberation Mono,Courier New,monospace;
    line-height: 1.5;
  }
  dt {
    font-weight: 600;
    color: rgb(14 165 233);
  }
  dd {
    color: rgb(79 70 229);
  }
</style>
EOF

echo '<dl>'"$(cat - | sed -r 's/^([^ ]+) \{ (.+?) \}/<dt>\1<\/dt><dd>\2<\/dd>/' | sed 's/\; /\;<br>/g')"'</dl>'


