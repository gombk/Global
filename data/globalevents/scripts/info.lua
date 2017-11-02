-- [( Script created by DoidinMapper )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"Bem Vindo ao TibiaLand!",
"Aproveitem ao maximo nosso servidor",
"Acess nosso site: http://tibialand.servegame.com/",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],22)
return TRUE
end