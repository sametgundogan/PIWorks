SELECT SUBSTRING(
  Stats_Access_Link, -- column name we gonna handle
  CHARINDEX('//',Stats_Access_Link)+2, -- start index of the value, there is no repeat '//' chars, so I chose this to start and added 2 , because I want to get just name, not slashes
  (CHARINDEX('</', Stats_Access_Link) - CHARINDEX('//', Stats_Access_Link)+2) -- length that we try to yield, i tried to find exact length by using index of'</' minus index of '//'
)
FROM table_x -- the name of the table was not given

/*
We may use trim functions (right and left trim) in this case, but I preferred to use substring.
*/
