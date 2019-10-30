#!/usr/bin/env lua
--
-- ASCII (American Standard Code for Information Interchange) Code
--

-- Global variables
local ASCII_Table = {}

-- FORMAT = 'html'
-- context = {}

if FORMAT == nil then
    FORMAT = 'context'
end

print('FORMAT = ' .. FORMAT)


-- Formatting table syntax for ConTeXt and HTML

if FORMAT == 'context' then
    bTABLE = context.bTABLE
    eTABLE = context.eTABLE
    bTABLEhead = context.bTABLEhead
    eTABLEhead = context.eTABLEhead
    bTABLEbody = context.bTABLEbody
    eTABLEbody = context.eTABLEbody
    bTR = context.bTR
    eTR = context.eTR
    bTD = context.bTD
    eTD = context.eTD
    bTH = context.bTH
    eTH = context.eTH
else
    local i = io.write
    context = io.write
    tex = {sprint = io.write }
    bTABLE = function() i("<table>\n") end
    eTABLE = function() i("</table>\n") end
    bTABLEhead = function() i("<thead>\n") end
    eTABLEhead = function() i("</thead>") end
    bTABLEbody = function() i("<tbody>\n") end
    eTABLEbody = function() i("</tbody>") end
    bTR = function() i("<tr>") end
    eTR = function() i("</tr>\n") end
    bTD = function() i("<td>") end
    eTD = function() i("</td>") end
    bTH = function() i("<th>") end
    eTH = function() i("</th>") end
end

-- ASCII control codes and TeX unfriendly characters
local Control = {
[0] = { "NUL", "null",  },
{ "SOH", "start of heading" },
{ "STX", "start of text" },
{ "ETX", "end of text" },
{ "EOT", "end of transmission" },
{ "ENQ", "enquiry" },
{ "ACK", "acknowledge" },
{ "BEL", "bell", '\\textbackslash{}a' },
{ "BS", "backspace", '\\textbackslash{}b' },
{ "TAB", "horizontal tab", '\\textbackslash{}t'},
{ "LF", "new line (or LF, line feed)", '\\textbackslash{}n' },
{ "VT", "vertical tab", '\\textbackslash{}v' },
{ "FF", "new page (or FF, form feed)", '\\textbackslash{}f' },
{ "CR", "carriage return", '\\textbackslash{}r' },
{ "SO", "shift out" },
{ "SI", "shift in" },
{ "DLE", "data link escape" },
{ "DC1", "device control 0" },
{ "DC2", "device control 1" },
{ "DC3", "device control 2" },
{ "DC4", "device control 3" },
{ "NAK", "negative acknowledge" },
{ "SYN", "synchronous idle" },
{ "ETB", "end of transmission block" },
{ "CAN", "cancel" },
{ "EM", "end of medium" },
{ "SUB", "substitute" },
{ "ESC", "escape", '\\textbackslash{}e' },
{ "FS", "file separator" },
{ "GS", "group separator" },
{ "RS", "record separator" },
{ "US", "unit separator" },
{ "SP", "space" },
[35] = { '\\texthash' },
[36] = { '\\textdollar' },
[37] = { '\\%', '' },
[91] = { '\\[' },
[92] = { '\\textbackslash' },
[93] = { '\\]' },
[123] = { '\\{' },
[124] = { '\\textbar' },
[125] = { '\\}' },
[126] = { '\\textasciitilde' },
[127] = { "DEL", "" },
}

-- Convert ASCII code to character
function p(code)
   if Control[code] ~= nil then
        out = Control[code][1]
        if Control[code][3] ~= nil then
            out = out .. "\\crlf" .. Control[code][3]
        end
        if code <= 32 or code == 127 then
            tex.sprint("{\\tt " .. out .. "}")
        else
            context(out)
        end
   else
        context(string.char(code))
   end
end

--- Convert integer to n-bits binary
-- @param byte, integer
-- @param nbitsl, width of binary number
-- @return string, binary number
function byte2bin(byte, nbits)
local t = {}
  for i=nbits-1,0,-1 do
    t[#t+1] = math.floor(byte / 2^i)
    byte = byte % 2^i
  end
  return table.concat(t)
end

-- Line prefix
function print_prefix(code)
    out = code
    out = out .. ' ' .. string.format("0x%x", code)
    out = out .. ' ' .. string.format("%#o", code)
    out = out .. ' ' .. string.sub(byte2bin(code, 7), 1, 2)
    io.write(out .. ' ')
end

function ascii_table_header()
    -- Header
    bTABLEhead()
    for line = 1, 4  do
        bTR()
        for code = 0, 31 do
            -- decimal
            bTH()
            if line == 1 then context(code)
            -- hexa
            elseif line == 2 then tex.sprint('{\\tt' .. string.format("0x%02X", code) .. '}')
            -- octal
            elseif line == 3 then context(string.format("%#o", code))
            -- binary
            elseif line == 4 then context(byte2bin(code, 5))
            end
            eTH()
        end
        eTR()
    end
    eTABLEhead()
end

function ascii_table_content()
    -- Table content
    bTABLEbody()
    bTR() -- first row
    for code = 0, 127 do
        if code % 32 == 0 then
            if code > 1 then
            eTR() bTR() -- next row
            end
        end
        bTD() p(code) eTD()
    end
    eTABLEbody()
end

function ascii_table()
    bTABLE()
    ascii_table_header()
    ascii_table_content()
    eTABLE()
end

ASCII_Table.ascii_table = ascii_table
return ASCII_Table

