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
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarGlomLevel" -Value 2 #Combine botões da barra de tarefas e oculte rótulos
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "MMTaskbarGlomLevel" -Value 2 #Combine botões da barra de tarefas e oculte rótulos em outras barras de tarefas
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

################ Mudar Tema Windows (Aplicativos/Windows Explorer)
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value "0" -Type Dword -Force
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value "0" -Type Dword -Force
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Accent -Name AccentColorMenu -Value "4282927692"
#Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Accent -Name AccentPalette -Value ([byte[]](0x33,0x32,0xFF))
#Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Accent -Name AccentPalette -Value "9b 9a 99 00 84 83 81 00 6d 6b 6a 00 4c 4a 48 00 36 35 33 00 26 25 24 00 19 19 19 00 10 7c 10 00" -Type -Force
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Accent -Name StartColorMenu -Value "4281546038"
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\DWM -Name ColorPrevalence -Value 1
#Valores possíveis: 0 - Tema Escuro, 1 - Tema Claro
#################################################################################################################################

################ Mudar Tema Windows (Barra Windows)
#Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 0
#Valores possíveis: 0 - Tema Escuro, 1 - Tema Claro
#################################################################################################################################

################ Expandir faixa de opções Explorador de Arquivos
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Ribbon -Name MinimizedStateTabletModeOff -Value "0"
#Valores possíveis: 0 - Sempre mostrar (expandir), 1 - Sempre esconder (minimizar)
#################################################################################################################################

#------------------------------------------------- REINICIAR WINDOWS EXPLORER
################ Reinicia o Serviço Windows Explorer
Stop-Process -Name explorer -Force
Start-Process explorer
#################################################################################################################################


#Menu te contexto antigo Windows 11:
# reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
# reg.exe delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve

# ÚLTIMA ATUALIZAÇÃO: 30/10/2024
# Adicionada alteração de cores e tema do Windows
# Adicionados itens "Não combinar itens na barra de tarefas", "Ocultar botão e barra de pesquisa", "Ao usar várias telas, mostrar meus aplicativos da barra de tarefas em..." e "Reinicia o Serviço Windows Explorer"
# Adicionado o modo entusiata (Mais Detalhes) na tela de progresso de cópia de arquivos
