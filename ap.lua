-- Conexao: criando rede de wifi nova - AP
-- NÃ£o esqueÃ§a de alterar o XX para o ID da etiqueta do seu NodeMCU
local ap_cfg={ssid="nodemcu16", pwd="reativos", save=false,
    staconnected_cb=function(cli) print("AlguÃ©m conectou! MAC: " .. cli.MAC) end,
    stadisconnected_cb=function(cli) print("AlguÃ©m desconectou! MAC: " .. cli.MAC) end
    }

wifi.setmode(wifi.SOFTAP)
wifi.ap.config(ap_cfg)
wifi.ap.setip({ip="192.168.0.20",netmask="255.255.255.0", 
   gateway="192.168.0.20"})
print(wifi.ap.getip())