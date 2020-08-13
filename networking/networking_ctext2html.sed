s:\\blank\[.*\]::
s:\\startenumerate:<ol>:
s:\\stopenumerate:</ol>:
s|.*\[columns,five\]|<ul style="-moz-column-gap: 20; -moz-column-count: 5; -webkit-column-count: 5; -webkit-column-gap: 20; column-count: 5; column-gap: 20;">|
s|.*\[columns,four\]|<ul style="-moz-column-gap: 20; -moz-column-count: 4; -webkit-column-count: 4; -webkit-column-gap: 20; column-count: 4; column-gap: 20;">|
s|.*\[columns,two\]|<ul style="-moz-column-gap: 20; -moz-column-count: 2; -webkit-column-count: 2; -webkit-column-gap: 20; column-count: 2; column-gap: 20;">|
s:\\quotation\\bgroup\(.*\)\\egroup:“\1”:
s:\\uv{\(.*\)}:“\1”:
s/\\bgroup\\tt/<span style="font-family: monospace;text-align:right;">/
s:\\egroup:</span>:
s:\\\/::g
