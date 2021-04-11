#Abfrage Serienname

$name= Read-Host -Prompt 'Name der Serie: '

#Abfrage Anzahl der Staffeln

$anzahl= Read-Host -Prompt 'Wieviele Ordner sollen angelegt werden: '

#Serienordner wird erstellt

New-Item -ItemType Directory -Name $name

#Script wechselt in den Unterordner

cd $name

#Staffelordner werden nach vorgabe erstellt

$i = 1

while ($i -le $anzahl) {
    New-Item -ItemType Directory -Name "Staffel $i"
    $i++
}
