# Portainer

```html
<button onclick="copiarTexto()">Copiar</button>
<textarea id="meuTexto">wget https://</textarea>

<script>
function copiarTexto() {
  var texto = document.getElementById("meuTexto");
  texto.select();
  document.execCommand("copy");
}
</script>


