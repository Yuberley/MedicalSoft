document.getElementById("btnradio1").addEventListener("click", Revised);
document.getElementById("btnradio2").addEventListener("click", Revised);
document.getElementById("btnradio3").addEventListener("click", Revised);
document.getElementById("btnradio4").addEventListener("click", Revised);
document.getElementById("btnradio5").addEventListener("click", Revised);
document.getElementById("btnradio6").addEventListener("click", Revised);
document.getElementById("btnradio7").addEventListener("click", Revised);
document.getElementById("btnradio8").addEventListener("click", Revised);
document.getElementById("btnradio9").addEventListener("click", Revised);
document.getElementById("btnradio10").addEventListener("click", Revised);
document.getElementById("btnradio11").addEventListener("click", Revised);
document.getElementById("btnradio12").addEventListener("click", Revised);

function Revised(){

    let total = 0;
    let resultado = document.getElementById("resultado");
    let rd1 = document.getElementById("btnradio1");
    let rd3 = document.getElementById("btnradio3");
    let rd5 = document.getElementById("btnradio5");
    let rd7 = document.getElementById("btnradio7");
    let rd9 = document.getElementById("btnradio9");
    let rd11 = document.getElementById("btnradio11");

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

    if(total==0){
      resultado.innerHTML = `
      Resultado: ${total} <br>
      Riesgo de clase I <br><br>
      3,9 % <br>
      Riesgo de muerte, infarto de miocardio o paro cardíaco a 30 días
    `;
    }else if(total==1){
      resultado.innerHTML = `
      Resultado: ${total} <br>
      Riesgo de clase II <br><br>
      6 % <br>
      Riesgo de muerte, infarto de miocardio o paro cardíaco a 30 días
    `;
    }else if(total==2){
      resultado.innerHTML = `
      Resultado: ${total} <br>
      Riesgo de clase III <br><br>
      10,1 % <br>
      Riesgo de muerte, infarto de miocardio o paro cardíaco a 30 días
    `;
    }else{
      resultado.innerHTML = `
      Resultado: ${total} <br>
      Riesgo de clase IV <br><br>
      15 % <br>
      Riesgo de muerte, infarto de miocardio o paro cardíaco a 30 días
    `;
    }
}

function closed() { 
  window.open('','_parent',''); 
  window.close(); 
} 


