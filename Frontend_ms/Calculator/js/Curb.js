document.getElementById("btnradio1").addEventListener("click", Curb);
document.getElementById("btnradio2").addEventListener("click", Curb);
document.getElementById("btnradio3").addEventListener("click", Curb);
document.getElementById("btnradio4").addEventListener("click", Curb);
document.getElementById("btnradio5").addEventListener("click", Curb);
document.getElementById("btnradio6").addEventListener("click", Curb);
document.getElementById("btnradio7").addEventListener("click", Curb);
document.getElementById("btnradio8").addEventListener("click", Curb);
document.getElementById("btnradio9").addEventListener("click", Curb);
document.getElementById("btnradio10").addEventListener("click", Curb);

function Curb(){

  let total = 0;
  let resultado = document.getElementById("resultado");
  let rd1 = document.getElementById("btnradio1");
  let rd3 = document.getElementById("btnradio3");
  let rd5 = document.getElementById("btnradio5");
  let rd7 = document.getElementById("btnradio7");
  let rd9 = document.getElementById("btnradio9");

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

  if(total==0){
    resultado.innerHTML = `
    Resultado: ${total} <br>
    Grupo de bajo riesgo: 0,6% de mortalidad a los 30 días.<br>
    Considere el tratamiento ambulatorio.
  `;
  }else if(total==1){
    resultado.innerHTML = `
    Resultado: ${total} <br>
    Grupo de bajo riesgo: 2,7% de mortalidad a 30 días.<br>
    Considere el tratamiento ambulatorio.
  `;
  }else if(total==2){
    resultado.innerHTML = `
    Resultado: ${total} <br>
    Grupo de riesgo moderado: 6,8% de mortalidad a 30 días.<br>
    Considere el tratamiento hospitalario o ambulatorio con un seguimiento cercano.
  `;
  }else if(total==3){
    resultado.innerHTML = `
    Resultado: ${total} <br>
    Grupo de riesgo severo: 14.0% de mortalidad a los 30 días.<br>
    Considere el tratamiento hospitalario con posible ingreso en cuidados intensivos.
  `;
  }else{
    resultado.innerHTML = `
    Resultado: ${total} <br>
    Grupo de mayor riesgo: 27,8% de mortalidad a 30 días.<br>
    Considere el tratamiento hospitalario con posible ingreso en cuidados intensivos.
  `;
  }
}


function closed() { 
  window.open('','_parent',''); 
  window.close(); 
} 

