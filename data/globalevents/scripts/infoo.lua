function onThink(interval, lastExecution)
  -- Configura��es
    local cor = 22
    local mensagens ={
[[Orion Informa��es: 
Bem Vindo Ao Orion-Server !!
Para Compra pote NPC Malak !!
Para Vender Itens Soya na entrada North de Thais e na Frente da DP de carlin!!
Accs Criadas pelo OT n�o Loga no Site, para logar basta vc mudar
sua senha no acc manager.!!
Bom Jogo a Todos!!!
]]
}

  -- Fim de Configura��es

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end