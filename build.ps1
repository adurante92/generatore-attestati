# Unisce src\app.html e le librerie in un unico file: "Genera Attestati.html"
$root = $PSScriptRoot
$html = [IO.File]::ReadAllText("$root\src\app.html", [Text.Encoding]::UTF8)
$libs = foreach ($f in 'pizzip.min.js','docxtemplater.js','xlsx.full.min.js') {
  $js = [IO.File]::ReadAllText("$root\lib\$f", [Text.Encoding]::UTF8) -replace '</script', '<\/script'
  "<script>`n$js`n</script>"
}
$html = $html.Replace('<!--LIBS-->', ($libs -join "`n"))
$utf8 = New-Object Text.UTF8Encoding($false)
# "Genera Attestati.html" per l'uso in locale, index.html per GitHub Pages (stesso contenuto)
foreach ($nome in 'Genera Attestati.html', 'index.html') {
  [IO.File]::WriteAllText("$root\$nome", $html, $utf8)
  "Creato: $root\$nome"
}
