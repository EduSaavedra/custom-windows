################ Mudar opção "Abrir Explorador para: Este Computador"
$CaminhoChaveExploradorPara = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
$NomeChaveExploradorPara = "LaunchTo"
$ValorChaveExploradorPara = 1
Set-ItemProperty -Path $CaminhoChaveExploradorPara -Name $NomeChaveExploradorPara -Value $ValorChaveExploradorPara
#################################################################################################################################

################ Habilita itens ocultos
$CaminhoChaveItensOcultos = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
$NomeChaveItensOcultos = "Hidden"
$ValorChaveItensOcultos = 1
Set-ItemProperty -Path $CaminhoChaveItensOcultos -Name $NomeChaveItensOcultos -Value $ValorChaveItensOcultos
#################################################################################################################################

################ Habilita mostrar extensão de arquivos
$CaminhoChaveExtensaoArquivos = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
$NomeChaveExtensaoArquivos = "HideFileExt"
$ValorChaveExtensaoArquivos = 0
Set-ItemProperty -Path $CaminhoChaveExtensaoArquivos -Name $NomeChaveExtensaoArquivos -Value $ValorChaveExtensaoArquivos
#################################################################################################################################

################ Desabilita Botão Cortana
$CaminhoChaveBotaoCortana = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
$NomeChaveBotaoCortana = "ShowCortanaButton"
$ValorChaveBotaoCortana = 0
Set-ItemProperty -Path $CaminhoChaveBotaoCortana -Name $NomeChaveBotaoCortana -Value $ValorChaveBotaoCortana
#################################################################################################################################

################ Desabilita Botão TaskView
$CaminhoChaveBotaoTaskView = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
$NomeChaveBotaoTaskView = "ShowTaskViewButton"
$ValorChaveBotaoTaskView = 0
Set-ItemProperty -Path $CaminhoChaveBotaoTaskView -Name $NomeChaveBotaoTaskView -Value $ValorChaveBotaoTaskView
#################################################################################################################################

################ Desabilita "Mostrar arquivos usados recentemente "
$CaminhoChaveArquivosRecentes = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer"
$NomeChaveArquivosRecentes = "ShowRecent"
$ValorChaveArquivosRecentes = 0
Set-ItemProperty -Path $CaminhoChaveArquivosRecentes -Name $NomeChaveArquivosRecentes -Value $ValorChaveArquivosRecentes
#################################################################################################################################

################ Desabilita "Mostrar pastas usadas frequentemente"
$CaminhoChavePastasFrequentes = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer"
$NomeChavePastasFrequentes = "ShowFrequent"
$ValorChavePastasFrequentes = 0
Set-ItemProperty -Path $CaminhoChavePastasFrequentes -Name $NomeChavePastasFrequentes -Value $ValorChavePastasFrequentes
#################################################################################################################################

################ Não combinar itens na barra de tarefas
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarGlomLevel" -Value 0 #Combine botões da barra de tarefas e oculte rótulos
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "MMTaskbarGlomLevel" -Value 0 #Combine botões da barra de tarefas e oculte rótulos em outras barras de tarefas
#Valores possíveis: 0 - Sempre combinar, ocultar rótulos, 1 - Combinar quando a barra de tarefas estiver cheia, 2 - Nunca combinar
#################################################################################################################################

################ Ocultar botão e barra de pesquisa
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -Value 0 #Ocultar a Barra de Pesquisa
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSearchBox" -Value 0 #Ocultar o Botão de Pesquisa
#################################################################################################################################

################ Ao usar várias telas, mostrar meus aplicativos da barra de tarefas em...
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "MMTaskbarMode" -Value 2
#Valores possíveis: 0 - Todas as barras de tarefas, 1 - Barra de tarefas principal e barra de tarefas onde a janela está aberta, 2 - Barra de tarefas onde a janela está aberta
#################################################################################################################################

################ Habilitar a opção "Mais Detalhes" (modo entusiasta) na tela de progresso de cópia de arquivos
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Name "EnthusiastMode" -Value 1
#################################################################################################################################

################ Reinicia o Serviço Windows Explorer
Stop-Process -Name explorer -Force
Start-Process explorer
#################################################################################################################################

# ÚLTIMA ATUALIZAÇÃO: 24/06/2024
# Adicionados itens "Não combinar itens na barra de tarefas", "Ocultar botão e barra de pesquisa", "Ao usar várias telas, mostrar meus aplicativos da barra de tarefas em..." e "Reinicia o Serviço Windows Explorer"
# Adicionado o modo entusiata (Mais Detalhes) na tela de progresso de cópia de arquivos
