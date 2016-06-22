s:\\blank\[.*\]::
s:\\startenumerate:<ol>:
s:\\stopenumerate:</ol>:
s|.*\[columns,three\]|<ul style="-moz-column-gap: 20; -moz-column-count: 3; -webkit-column-count: 3; -webkit-column-gap: 20; column-count: 3; column-gap: 20;">|
s:\\quotation\\bgroup\(.*\)\\egroup:“\1”:
s:\\uv{\(.*\)}:“\1”:

# bash tahak odstranit
# s:}::g
# s:--:–:g
