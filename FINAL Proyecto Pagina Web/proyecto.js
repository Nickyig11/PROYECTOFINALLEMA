function mostrarTexto(idElemento) {
    // Obtén el elemento de texto usando el ID proporcionado
    var elemento = document.getElementById(idElemento);

    // Alterna entre mostrar y ocultar el elemento
    if (elemento.style.display === "none" || elemento.style.display === "") {
      elemento.style.display = "block";
    } else {
      elemento.style.display = "none";
    }
  }