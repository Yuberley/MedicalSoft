// get Id in url
const locationAll = location.href;
const locationHTTP = locationAll.split(':')[1];
const DNS = locationHTTP.split("//")[1];

console.log(DNS);

const API = `http://${DNS}:8060/medicalsoft/api`;

const HTMLResponse = document.querySelector("#personas");

async function getPeople(){
  const result = await fetch(`${API}/people`)
                .then(response => response.json())
                .then(people => {
                  var template = people.map((person) => `<tr><th>${person.personId}</th>
                                                              <td>${person.firstName}</td>
                                                              <td>${person.lastName}</td>
                                                              <td>${person.sex}</td>
                                                              <td><a href="/medicalsoft/historia_clinica/?idPatient=${person.personId}">
                                                                    <button type="button" class="btn btn-outline-info">Historia</button>
                                                                  </a></td></tr>`);
                    HTMLResponse.innerHTML = template;
                  
                });     
}

getPeople();


function savePerson(){

  const personId = document.getElementById('identificacion').value;
  const firstName = document.getElementById('nombres').value;
  const lastName = document.getElementById('apellidos').value;
  const sex = document.getElementById('sexo').value;
  const birthDate = document.getElementById('fecha_de_nacimiento').value;

  const person = {
    personId,
    firstName,
    lastName,
    sex,
    birthDate
  }

  // const occupation = document.getElementById('occupation').value;
  // const religion = document.getElementById('religion').value;
  // const race = document.getElementById('race').value;
  // const laterality = document.getElementById('laterality').value;
  // const informant = document.getElementById('informant').value;
  // const informant = document.getElementById('informant').value;
  // const informant = document.getElementById('informant').value;
  // const informant = document.getElementById('informant').value;
  // const informant = document.getElementById('informant').value;
  // const informant = document.getElementById('informant').value;
  // const informant = document.getElementById('informant').value;
  // const informant = document.getElementById('informant').value;
  // const informant = document.getElementById('informant').value;
  // const informant = document.getElementById('informant').value;


  const patient = {
    personId,

  }

  const clinic_history = {

  }



  const url_save = `http://${DNS}:8060/medicalsoft/api/people/save`;

  fetch(url_save, {
    method: 'POST',
    headers: { 
      'Content-Type': 'application/json',
    },
    body: JSON.stringify(person)
  })
  .then( response => response.json())
  .then( data => {
    console.log(data)
  }).catch(error => console.error(error))
}


const nacimiento = document.querySelector("#ciudades");
const residencia = document.querySelector("#residencia");
const procedencia = document.querySelector("#procedencia");
const template = ciudades.map((ciudad) => `<option value="${ciudad.code}">${ciudad.name}</option>`); 
nacimiento.innerHTML = template;
residencia.innerHTML = template;
procedencia.innerHTML = template;