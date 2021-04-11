#Abfrage Serienname

$name= Read-Host -Prompt 'Name der Serie: '

#Abfrage Anzahl der Staffeln
[int32]$von = Read-Host -Prompt 'Wieviele Ordner sollen angelegt werden: '
$bis= Read-Host -Prompt 'Wieviele Ordner sollen angelegt werden: '

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
