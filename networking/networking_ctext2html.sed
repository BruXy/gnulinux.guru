s:\\blank\[.*\]::
s:\\startenumerate:<ol>:
s:\\stopenumerate:</ol>:
s|.*\[columns,four\]|<ul style="-moz-column-gap: 20; -moz-column-count: 4; -webkit-column-count: 4; -webkit-column-gap: 20; column-count: 4; column-gap: 20;">|
s:\\quotation\\bgroup\(.*\)\\egroup:“\1”:
s:\\uv{\(.*\)}:“\1”:
s/\\bgroup\\tt/<span style="font-family: monospace;text-align:right;">/
s:\\egroup:</span>:
