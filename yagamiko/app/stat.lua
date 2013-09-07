#!/usr/bin/env lua

module("stat",package.seeall)

--count service 
function countService(funcname)
	-- body
	local k = "count:";
	
	local red = Redis:new()
	local ok, err = red:connect("127.0.0.1", 6379)

	if not ok then
		
		
	end

	local day = os.date("%Y%m%d",time);
	local hour = os.date("%Y%m%d%H",time);

	-- lua
	Field = {
		[1] = 'total',
		[2] = day,
		[3] = hour,
	}

	for key,val in ipairs(Field) do
		local ck = k..funcname..":"..val

		red:incrby(ck,1)
	end

end

	



