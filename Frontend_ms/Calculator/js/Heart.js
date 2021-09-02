document.getElementById("btnradio1").addEventListener("click", Heart);
document.getElementById("btnradio2").addEventListener("click", Heart);
document.getElementById("btnradio3").addEventListener("click", Heart);
document.getElementById("btnradio4").addEventListener("click", Heart);
document.getElementById("btnradio5").addEventListener("click", Heart);
document.getElementById("btnradio6").addEventListener("click", Heart);
document.getElementById("btnradio7").addEventListener("click", Heart);
document.getElementById("btnradio8").addEventListener("click", Heart);
document.getElementById("btnradio9").addEventListener("click", Heart);
document.getElementById("btnradio10").addEventListener("click", Heart);
document.getElementById("btnradio11").addEventListener("click", Heart);
document.getElementById("btnradio12").addEventListener("click", Heart);
document.getElementById("btnradio13").addEventListener("click", Heart);
document.getElementById("btnradio14").addEventListener("click", Heart);
document.getElementById("btnradio15").addEventListener("click", Heart);

function Heart(){

    let total = 0;
    let resultado = document.getElementById("resultado");
    let rd1 = document.getElementById("btnradio1");
    let rd2 = document.getElementById("btnradio2");
    let rd4 = document.getElementById("btnradio4");
    let rd5 = document.getElementById("btnradio5");
    let rd7 = document.getElementById("btnradio7");
    let rd8 = document.getElementById("btnradio8");
    let rd10 = document.getElementById("btnradio10");
    let rd11 = document.getElementById("btnradio11");
    let rd13 = document.getElementById("btnradio13");
    let rd14 = document.getElementById("btnradio14");


    if (rd1.checked==true) {
      total += 0;
    } else if(rd2.checked==true){
      total += 1;
    }else{
      total += 2;
    }

    if (rd4.checked==true) {
      total += 0;
    } else if(rd5.checked==true){
      total += 1;
    }else{
      total += 2;
    }

    if (rd7.checked==true) {
      total += 0;
    } else if(rd8.checked==true){
      total += 1;
    }else{
      total += 2;
    }

    if (rd10.checked==true) {
      total += 0;
    } else if(rd11.checked==true){
      total += 1;
    }else{
      total += 2;
    }

    if (rd13.checked==true) {
      total += 0;
    } else if(rd14.checked==true){
      total += 1;
    }else{
      total += 2;
    }


    if(total>=0 && total<=3){
      resultado.innerHTML = `
      Resultado: ${total} <br>
      Puntaje bajo: Riesgo de MACE de 0,9-1,7%.<br><br>
      Si el electrocardiograma es muy sospechoso, muchos expertos recomiendan un diagnóstico adicional y la admisión incluso con un puntaje HEART bajo.

    `;
    }else if(total>=4 && total<=6){
      resultado.innerHTML = `
      Resultado: ${total} <br>
      Puntuacion moderada: Riesgo de MACE de 12-16,6%.<br><br>
      Si el electrocardiograma es muy sospechoso, muchos expertos recomiendan un diagnóstico adicional y la admisión incluso con un puntaje HEART bajo.
    `;
    }else{
      resultado.innerHTML = `
      Resultado: ${total} <br>
      Puntaje alto: Riesgo de MACE de 50-65%.
    `;
    }
}

function closed() { 
  window.open('','_parent',''); 
  window.close(); 
} 

