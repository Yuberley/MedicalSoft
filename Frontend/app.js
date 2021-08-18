var nombre = document.getElementById('usuario');
var password = document.getElementById('contraseña');
var error = document.getElementById('error');
error.style.color = 'white';

function enviarFormulario(){
    console.log("Enviando formulario ... ");

    var mensajesError = [];

    if(nombre.value === null || nombre.value === ''){
        mensajesError.push('Ingresa tu nombre');
    }

    if(password.value === null || password.value === ''){
        mensajesError.push('Ingresa tu password');
    }

    error.innerHTML = mensajesError.join(', ');

    return false;
}