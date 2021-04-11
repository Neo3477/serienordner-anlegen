#Abfrage Serienname

$name= Read-Host -Prompt 'Name der Serie: '

#Abfrage Anzahl der Staffeln
[int32]$von = Read-Host -Prompt 'Nummer der ersten Staffel: '
$bis= Read-Host -Prompt 'Nummer der letzten Staffel: '

#Serienordner wird erstellt

New-Item -ItemType Directory -Name $name

#Script wechselt in den Unterordner

cd $name

#Staffelordner werden nach vorgabe erstellt

$i = $von

while ($i -le $bis) {
    New-Item -ItemType Directory -Name "Staffel $i"
    $i++
}
