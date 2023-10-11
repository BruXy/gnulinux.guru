1i\\<style type="text/css">
1i\\span.CS { font-family: monospace; background: cyan; }
1i\\span.CS:before { content:":"; }
1i\\span.CE { font-family: monospace; background: yellow; border-style:outset; border-color: yellow; }
1i\\span.CC { font-family: monospace; background: red;    border-style:outset; border-color: red;    }
1i\\span.CV { font-family: monospace; background: green;  border-style:outset; border-color: green;  }
1i\\span.C { font-family: monospace; background: #aaa;  border-style:outset; border-color: gray;  }
1i\\span.CSK { font-family: monospace; background: cyan; border-style:outset; border-color: cyan; }
#1i\\span.CSK, span.CV, span.CC, span.CE, span.CS { font-size: 1.2em; }
1i\\sub.low { padding-left:0.25em; color: #888; font-size: 6pt; font-family: sans-serif; }
1i\\span.ss { font-family:sans-serif; }
1i\\span.command {  color:yellow; }
1i\\span.exkey   { color:cyan; }
1i\\span.visual  { color:green; }
1i\\span.edit  { color:red; }
1i\\span.descr  { background: white; }
1i\\li { padding-top: 0.5em; clear:both;}
#1i\\li.dotfill { padding-top: 0.5em; width: 75%; clear:both; background: url("dotleaders.png") left 85% repeat-x; }
1i\\li.dotfill { padding-top: 0.5em; clear:both; background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEkAAAABCAMAAAClpnPvAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAAMUExURbu7u0RERAAAAP///6R6qhEAAAAEdFJOU////wBAKqn0AAAAGElEQVR42mJgYgYBBkYwxcgApsgSAwgwABoaALXdV9czAAAAAElFTkSuQmCC) left 85% repeat-x; }
1i\\span.U { text-decoration: underline; }
1i\\span.DF { float:right; background: white; }
1i\\span.key { font-variant:small-caps; }
1i\\body { counter-reset: chapter; }
1i\\h3 { counter-reset: section; }
1i\\h3:before { counter-increment: chapter; content: counter(chapter) ". "; }
1i\\h4 { counter-reset: subsection; }
1i\\h4:before { counter-increment: section; content: counter(chapter) "." counter(section) ". "; }
1i\\h5:before { counter-increment: subsection; content: counter(chapter) "." counter(section) "." counter(subsection) ". "; }
1i\table, th { text-align: center; border-collapse: collapse; }
1i\th { background: silver; } 
1i\td, th { border: 1px solid black; }
1i\\</style>

/^%/d
s:&:\&amp;:
s:\\a:\&nbsp;≈\&nbsp;:g
s:\\_:_:g
s:<:\&lt;:g
s:>:\&gt;:g
s:\\low{\([^}]*\)}:<sub>\1</sub>:g
s:\\ge:≥:g
s:\\le{}:≤:g
s:\~:\&nbsp;:g
s:{}::g
s:{\\em \([^}]*\)}:<em>\1</em>:g
s:\\symdollar:\&#x24;:g
s:\\|:|:g
s:\\symalpha:α:g
s:\\#:#:g
s:\\U{\([^}]*\)}:<span class="U">\1</span>:g
s:\\title{\(.*\)}:<h2>\1</h2>:
s:\\section{\(.*\)}:<h3>\1</h3>:
s:\\subsection{\(.*\)}:<h4>\1</h4>:
s:\\subsubsection{\(.*\)}:<h5>\1</h5>:
s:\\startitemize:<ul>:
s:\\stopitemize:</ul>:
s:\\type{\([^}]*\)}:<code>\1</code>:g
s:\\quote{\([^}]*\)}:„\1“:g
s:\\CS{\([^}]*\)}:<span class="CS">\1</span>:g
s:\\CSK{\([^}]*\)}:<span class="CSK">\1</span>:g
s:\\CC{\([^}]*\)}:<span class="CC">\1<sub class="low">C</sub></span>:g
s:\\CE{\([^}]*\)}:<span class="CE">\1<sub class="low">E</sub></span>:g
s:\\CV{\([^}]*\)}:<span class="CV">\1<sub class="low">V</sub></span>:g
s:\\C{\([^}]*\)}:<span class="C">\1</span>:g
/\\D[Ff]/s:\\item\(.*\):<li class="dotfill"><span class="descr">\1:
s:\\D[Ff]\(.*\)$:</span><span class="DF">\1</span>:1
#s:\\D[Ff]\(.*\)$:<span class="DF">\1</span>:1
#s:\\D[Ff]:\&nbsp;:g
s:{\\stt \([^}]*\)}:<code><em>\1</em></code>:g
s:{\\sl \([^}]*\)}:<em>\1</em>:g
s:\\sl{\([^}]*\)}:<em>\1</em>:g
s:{\\bf \([^}]*\)}:<b>\1</b>:g
s:{\\bf\([^}]*\)}:<b>\1</b>:g
s:{\\tt\s*\([^}]*\)}:<code>\1</code>:g
s:{\\ss\([^}]*\)}:<span class="ss">\1</span>:g
s:\\em{\([^}]*\)}:<em>\1</em>:g
s:\\,/\\,:\&nbsp;/\&nbsp;:g
s:\s%.*$::
s:\\,: :g
#s:\\symtilda:\&sim;:g
s:\\symtilda:~:g
#s:\\symlb:{:g
#s:\\symrb:}:g
s:\\symlb:\&#123;:g
s:\\symrb:\&#125;:g
s:\\hfill: :g
s:\\backslash:\\:g
s:\\textbackslash:\\:g
s:--- :— :g
s:-- :– :g
s:\\ldots:…:g
s:\\dots:…:g
s:\\crlf:<br />:g
s:\$\([^$]*\)\$:<em>\1</em>:g
s:\\%:%:g
s:\\HM:<span class="key">Home</span>:g
s:\\DEL:<span class="key">Del</span>:g
s:\\IN:<span class="key">Ins</span>:g
s:\\EN:<span class="key">End</span>:g
s:\\ES:<span class="key">Esc</span>:g
s:\\TT:<span class="key">Tab</span>:g
s:\\BS:<span class="key">BackSpace</span>:g
s:\\CT:<span class="key">Ctrl</span>:g
s:\\PU:<span class="key">PageUp</span>:g
s:\\PD:<span class="key">PageDown</span>:g
s:\\SH:<span class="key">Shift</span>:g
s:\\high{\([^}]*\)}:<sup>\1</sup>:g
s:\\rightarrow:→:g
s:\\leftarrow:←:g
s:\\uparrow:↑:g
s:\\downarrow:↓:g
s:\\blacksquare:■:g
s:\\times:×:g
s:\\color\[\(.*\)\]{\(.*\)}:<span class="\1">\2</span>:g
s:\\CONTEXT:ConTeXt:g
s:\\item\(.*\):<li>\1:
/^\s*<li/s:$:</li>:
s:\\startitem:<li>:
s:\\stopitem:</li>:

s:\\bTABLEbody:<tbody>:
s:\\eTABLEbody:<\/tbody>:
s:\\bTABLEhead:<thead>:
s:\\eTABLEhead:<\/thead>:
s:\\bTABLE.*:<table>:
s:\\eTABLE.*:<\/table>:
s:\\bTR:<tr>:g
s:\\eTR:<\/tr>:g
s:\\bTD\[nr=\([0-9]\+\)\]:<td rowspan="\1">:g
s:\\bTD:<td>:g
s:\\eTD:<\/td>:g
s:\\bTH:<th>:g
s:\\eTH:<\/th>:g
s:\\starttyping:<pre>:
s:\\stoptyping:</pre>:
s:\\startlines:<pre>:
s:\\stoplines:</pre>:
s:\\startparagraph:<p>:
s:\\stopparagraph:</p>:
s:\\qquad:\&nbsp;\&nbsp;:g
s:&=:\&amp;=:g

