document.getElementById("btnradio1").addEventListener("click", Perc);
document.getElementById("btnradio2").addEventListener("click", Perc);
document.getElementById("btnradio3").addEventListener("click", Perc);
document.getElementById("btnradio4").addEventListener("click", Perc);
document.getElementById("btnradio5").addEventListener("click", Perc);
document.getElementById("btnradio6").addEventListener("click", Perc);
document.getElementById("btnradio7").addEventListener("click", Perc);
document.getElementById("btnradio8").addEventListener("click", Perc);
document.getElementById("btnradio9").addEventListener("click", Perc);
document.getElementById("btnradio10").addEventListener("click", Perc);
document.getElementById("btnradio11").addEventListener("click", Perc);
document.getElementById("btnradio12").addEventListener("click", Perc);
document.getElementById("btnradio13").addEventListener("click", Perc);
document.getElementById("btnradio14").addEventListener("click", Perc);
document.getElementById("btnradio15").addEventListener("click", Perc);
document.getElementById("btnradio16").addEventListener("click", Perc);

function Perc(){

    let total = 0;
    let resultado = document.getElementById("resultado");
    let rd1 = document.getElementById("btnradio1");
    let rd3 = document.getElementById("btnradio3");
    let rd5 = document.getElementById("btnradio5");
    let rd7 = document.getElementById("btnradio7");
    let rd9 = document.getElementById("btnradio9");
    let rd11 = document.getElementById("btnradio11");
    let rd13 = document.getElementById("btnradio13");
    let rd15 = document.getElementById("btnradio15");


    if (rd1.checked==true) {
      total += 0;
    } else {
      total += 1;
    }
    if (rd3.checked==true) {
      total += 0;
    } else {
      total += 1;
    }
    if (rd5.checked==true) {
      total += 0;
    } else {
      total += 1;
    }
    if (rd7.checked==true) {
      total += 0;
    } else {
      total += 1;
    }
    if (rd9.checked==true) {
      total += 0;
    } else {
      total += 1;
    }
    if (rd11.checked==true) {
      total += 0;
    } else {
      total += 1;
    }
    if (rd13.checked==true) {
      total += 0;
    } else {
      total += 1;
    }
    if (rd15.checked==true) {
      total += 0;
    } else {
      total += 1;
    }

    if(total==0){
      resultado.innerHTML = `
      Resultado: ${total} <br>
      No es necesario realizar más estudios, ya que hay menos del 2% de probabilidad de EP.
      Si ningún criterio es positivo y la probabilidad previa a la prueba del médico es ≤15%, se cumplen los criterios de la regla PERC.
    `;
    }else{
      resultado.innerHTML = `
      Resultado: ${total} <br>
      Si algún criterio es positivo, la regla PERC no se puede utilizar para descartar EP en este paciente.
    `;
    }
    
}

function closed() { 
  window.open('','_parent',''); 
  window.close(); 
} 

