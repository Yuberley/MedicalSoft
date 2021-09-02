document.getElementById("btnradio1").addEventListener("click", Cha);
document.getElementById("btnradio2").addEventListener("click", Cha);
document.getElementById("btnradio3").addEventListener("click", Cha);
document.getElementById("btnradio4").addEventListener("click", Cha);
document.getElementById("btnradio5").addEventListener("click", Cha);
document.getElementById("btnradio6").addEventListener("click", Cha);
document.getElementById("btnradio7").addEventListener("click", Cha);
document.getElementById("btnradio8").addEventListener("click", Cha);
document.getElementById("btnradio9").addEventListener("click", Cha);
document.getElementById("btnradio10").addEventListener("click", Cha);
document.getElementById("btnradio11").addEventListener("click", Cha);
document.getElementById("btnradio12").addEventListener("click", Cha);
document.getElementById("btnradio13").addEventListener("click", Cha);
document.getElementById("btnradio14").addEventListener("click", Cha);
document.getElementById("btnradio15").addEventListener("click", Cha);

function Cha(){

    let total = 0;
    let resultado = document.getElementById("resultado");
    let rd1 = document.getElementById("btnradio1");
    let rd2 = document.getElementById("btnradio2");
    let rd3 = document.getElementById("btnradio3");
    let rd4 = document.getElementById("btnradio4");
    let rd5 = document.getElementById("btnradio5");
    let rd6 = document.getElementById("btnradio6");
    let rd8 = document.getElementById("btnradio8");
    let rd10 = document.getElementById("btnradio10");
    let rd12 = document.getElementById("btnradio12");
    let rd14 = document.getElementById("btnradio14");

    if((rd1.checked==true||rd2.checked==true||rd3.checked==true)&&(rd4.checked==true||rd5.checked==true)){
      if (rd1.checked==true) {
        total += 0;
      } else if(rd2.checked==true) {
        total += 1;
      }else{
        total += 2;
      }
      if (rd4.checked==true) {
        total += 1;
      } else {
        total += 0;
      }
      if (rd6.checked==true) {
        total += 0;
      } else {
        total += 1;
      }
      if (rd8.checked==true) {
        total += 0;
      } else {
        total += 1;
      }
      if (rd10.checked==true) {
        total += 0;
      } else {
        total += 2;
      }
      if (rd12.checked==true) {
        total += 0;
      } else {
        total += 1;
      }
      if (rd14.checked==true) {
        total += 0;
      } else {
        total += 1;
      }

      if(total==0){
        resultado.innerHTML = `
        Resultado: ${total} <br>
        El riesgo de accidente cerebrovascular fue del 0,2% por año en> 90.000 pacientes (el estudio de cohorte sueco de fibrilación auricular) 
        y el riesgo de accidente cerebrovascular / AIT / embolia sistémica del 0,3%.<br>
        Una recomendación sugiere que una puntuación de 0 es de riesgo “bajo” y puede que no requiera anticoagulación;
      `;
      }else if(total==1){
        resultado.innerHTML = `
        Resultado: ${total} <br>
        El riesgo de accidente cerebrovascular fue del 0,6% por año en> 90.000 pacientes (el estudio de cohorte sueco de fibrilación auricular) 
        y el riesgo de accidente cerebrovascular / AIT / embolia sistémica del 0,9%.<br><br>
        Una puntuación de 1 es de riesgo “bajo-moderado” y debe considerar antiplaquetarios o anticoagulantes.
      `;
      }else if(total==2){
        resultado.innerHTML = `
        Resultado: ${total} <br>
        El riesgo de accidente cerebrovascular fue del 2,2% por año en> 90.000 pacientes (el estudio de cohorte sueco de fibrilación auricular) 
        y el riesgo de accidente cerebrovascular / AIT / embolia sistémica del 2,9%.<br><br>
        Una puntuación de 2 o más es riesgo “moderado-alto” y, de lo contrario, debería ser un candidato a anticoagulación.
      `;
      }else if(total==3){
        resultado.innerHTML = `
        Resultado: ${total} <br>
        El riesgo de accidente cerebrovascular fue del 3,2% por año en> 90.000 pacientes (el estudio de cohorte sueco de fibrilación auricular) 
        y el riesgo de accidente cerebrovascular / AIT / embolia sistémica del 4,6%.<br><br>
        Una puntuación de 2 o más es riesgo “moderado-alto” y, de lo contrario, debería ser un candidato a anticoagulación.
      `;
      }else if(total==4){
        resultado.innerHTML = `
        Resultado: ${total} <br>
        El riesgo de accidente cerebrovascular fue del 4,8% por año en> 90.000 pacientes (el estudio de cohorte sueco de fibrilación auricular) 
        y el riesgo de accidente cerebrovascular / AIT / embolia sistémica del 6,7%.<br><br>
        Una puntuación de 2 o más es riesgo “moderado-alto” y, de lo contrario, debería ser un candidato a anticoagulación.
      `;
      }else if(total==5){
        resultado.innerHTML = `
        Resultado: ${total} <br>
        El riesgo de accidente cerebrovascular fue del 7,2% por año en> 90 000 pacientes (el estudio de cohorte sueco de fibrilación auricular) 
        y del 10,0% de riesgo de accidente cerebrovascular / AIT / embolia sistémica.<br><br>
        Una puntuación de 2 o más es riesgo “moderado-alto” y, de lo contrario, debería ser un candidato a anticoagulación.
      `;
      }else if(total==6){
        resultado.innerHTML = `
        Resultado: ${total} <br>
        El riesgo de accidente cerebrovascular fue del 9,7% por año en> 90.000 pacientes (el estudio de cohorte sueco de fibrilación auricular) 
        y el riesgo de accidente cerebrovascular / AIT / embolia sistémica del 13,6%.<br><br>
        Una puntuación de 2 o más es riesgo “moderado-alto” y, de lo contrario, debería ser un candidato a anticoagulación.
      `;
      }else if(total==7){
        resultado.innerHTML = `
        Resultado: ${total} <br>
        El riesgo de accidente cerebrovascular fue del 11,2% por año en> 90.000 pacientes (el estudio de cohorte sueco de fibrilación auricular) 
        y el riesgo de accidente cerebrovascular / AIT / embolia sistémica del 15,7%.<br><br>
        Una puntuación de 2 o más es riesgo “moderado-alto” y, de lo contrario, debería ser un candidato a anticoagulación.
      `;
      }else if(total==8){
        resultado.innerHTML = `
        Resultado: ${total} <br>
        El riesgo de accidente cerebrovascular fue del 10,8% por año en> 90.000 pacientes (el estudio de cohorte sueco de fibrilación auricular) 
        y el riesgo de accidente cerebrovascular / AIT / embolia sistémica del 15,2%.<br><br>
        Nos damos cuenta de que 8 puntos mostraron un riesgo menor que 7 puntos, estos fueron los hallazgos del estudio, obviamente se debe asumir 
        que todos los puntajes ≥7 tienen un riesgo> 10%.<br><br>
        Una puntuación de 2 o más es riesgo “moderado-alto” y, de lo contrario, debería ser un candidato a anticoagulación.
      `;
      }else{
        resultado.innerHTML = `
        Resultado: ${total} <br>
        El riesgo de accidente cerebrovascular fue del 12,2% por año en> 90.000 pacientes (el estudio de cohorte sueco de fibrilación auricular) 
        y el riesgo de accidente cerebrovascular / AIT / embolia sistémica del 17,4%.<br><br>
        Una puntuación de 2 o más es riesgo “moderado-alto” y, de lo contrario, debería ser un candidato a anticoagulación.
      `;
      }

    }else{
      resultado.innerHTML = `
      Resultado: Por favor complete los campos obligatorios.
    `;
    }
}

function closed() { 
  window.open('','_parent',''); 
  window.close(); 
} 


