document.getElementById("submit").addEventListener("click", function () {
    var respostas = document.querySelectorAll('input[type="radio"]:checked');
    var pontuacao = 0;

    for (var i = 0; i < respostas.length; i++) {
        if (respostas[i].value === "a") {
            pontuacao++;
        }
    }

    var resultado = document.getElementById("resultado");
    resultado.innerHTML = "Sua pontuação: " + pontuacao + " de 10 perguntas.";

    if (pontuacao >= 7) {
        resultado.style.color = "green";
        resultado.innerHTML += " Parabéns!";
    } else {
        resultado.style.color = "red";
        resultado.innerHTML += " Continue estudando.";
    }
});
