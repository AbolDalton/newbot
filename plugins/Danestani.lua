local database = 'http://umbrella.shayan-soft.ir/txt/'
local function run(msg)
	local res = http.request(database.."danestani.db")
	if string.match(res, 'https://telegram.me/joinchat/C9R_Yz6n71KH2zbWzK2cJg') then res = string.gsub(res, 'https://telegram.me/joinchat/C9R_Yz6n71KH2zbWzK2cJg', "")
 end
	local danestani = res:split(",")
	return danestani[math.random(#danestani)]
end

return {
	description = "500 Persian danestani",
	usage = "danestani : send random danestani",
	patterns = {"^[Dd]anestani$"},
	run = run
}
