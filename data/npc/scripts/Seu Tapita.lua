local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local thinkMsg = {
	"Vai se fude.",
	"Filha da puta!",
	"Toma no cu!"
}

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg)	end
function onThink()						npcHandler:onThink()						end

function thinkCallback(cid)
	local rand = math.random(100)
	if thinkMsg[rand] then
		npcHandler:say(thinkMsg[rand])
	end
	return true
end

local node1 = keywordHandler:addKeyword({'onde que e a loja de pot'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'No seu cu'})
node1:addChildKeyword({'nao'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Pau no cu da odonto.', reset = true})
node1:addChildKeyword({'sim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Vai toma no cu filha da puta.', reset = true})

local node1 = keywordHandler:addKeyword({'trade'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'To vendendo sua mae filha da puta'})
node1:addChildKeyword({'nao'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Pau no cu da odonto.', reset = true})
node1:addChildKeyword({'sim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Vai toma no cu filha da puta.', reset = true})

npcHandler:setCallback(CALLBACK_ONTHINK, thinkCallback)
npcHandler:addModule(FocusModule:new())