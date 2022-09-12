cat <<EOF
.block { display: block !important }
.inline-block { display: inline-block !important }

.flex { display: flex !important }
.flex-col { flex-direction: column !important }
.flex-row { flex-direction: row !important }
.flex-1 { flex: 1 !important }

.items-center { align-items: center !important }
.justify-center { justify-content: center !important }
.text-center { text-align: center !important }

.font-thin { font-weight: 100 !important }
.font-extralight { font-weight: 200 !important }
.font-light { font-weight: 300 !important }
.font-normal { font-weight: 400 !important }
.font-medium { font-weight: 500 !important }
.font-semibold { font-weight: 600 !important }
.font-bold { font-weight: 700 !important }
.font-extrabold { font-weight: 800 !important }
.font-black { font-weight: 900 !important }

.leading-100 { line-height: 1 }
.leading-120 { line-height: 1.2 }
.leading-130 { line-height: 1.3 }
.leading-140 { line-height: 1.4 }
.leading-150 { line-height: 1.5 }
.leading-160 { line-height: 1.6 }

.shadow-sm { box-shadow: 0 1px 2px 0 rgb(0 0 0 / 0.05) !important }
.shadow { box-shadow: 0 1px 3px 0 #0002, 0 1px 2px -1px #0002 !important }
.shadow-md { box-shadow: 0 1px 6px -1px #0002, 0 2px 4px -2px #0002 !important }
.shadow-lg { box-shadow: 0 2px 16px -4px #0002, 0 4px 6px -4px #0002 !important }
.shadow-xl { box-shadow: 0 2px 24px -6px #0002, 0 8px 10px -6px #0002 !important }
.shadow-inner { box-shadow: inset 0 1px 3px 0 #0001 !important }
.shadow-none { box-shadow: none !important }

.pointer-events-none { pointer-events: none !important }
.pointer-events-auto { pointer-events: none !important }

.select-none { user-select: none !important }
.list-none { list-style-type: none !important }

.fill { fill: currentColor !important; stroke: none !important }
.stroke { stroke: currentColor !important; fill: none !important }

.static { position: static !important }
.fixed { position: fixed !important }
.relative { position: relative !important }
.absolute { position: absolute !important }
.sticky { position: sticky !important }

.inset-0 { inset: 0 }

EOF

PX="0 1 2 4 6 8 12 16 24 32 48 64 96 128 192 256"

for prop in margin padding; do
  for dim in top left bottom right; do
    for px in $PX; do
      echo ".${prop::1}${dim::1}-$px { $prop-$dim: ${px}px !important }"
    done
    echo
  done
  for px in $PX; do
    echo ".${prop::1}-$px { $prop-block: ${px}px !important; $prop-inline ${px}px !important }"
  done
  echo
  for px in $PX; do
    echo ".${prop::1}x-$px { $prop-inline: ${px}px !important }"
  done
  echo
  for px in $PX; do
    echo ".${prop::1}y-$px { $prop-block: ${px}px !important }"
  done
  echo
done
