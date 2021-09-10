// get Id in url
const locationAll = location.href;
const locationHTTP = locationAll.split(':')[1];
const DNS = locationHTTP.split("//")[1];

console.log(DNS);

const API = `http://${DNS}:8060/medicalsoft/api`;

const peopleSelector = document.getElementById('personas');

async function getPeople(){
  const result = await fetch(`${API}/people`)
                .then(response => response.json())
                .then(people => {
                    for (let personRow of people) {
                      peopleSelector.innerHTML += `<tr><th>${personRow.personId}</th>
                                                        <td>${personRow.firstName}</td>
                                                        <td>${personRow.lastName}</td>
                                                        <td>${personRow.sex}</td>
                                                        <td><a href="/medicalsoft/historia_clinica/?idPatient=${personRow.personId}">            
                                                        <button type="button" title="Ver historia de ${personRow.firstName} ${personRow.lastName}" class="btn btn-outline-info">Historia</button>
                                                            </a></td></tr>`
                    }
                });     
}

getPeople();


async function saveHistory(){

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

  const patientId = personId;
  const occupation = document.getElementById('ocupacion').value;
  const religion = document.getElementById('religion').value;
  const race = document.getElementById('raza').value;
  const laterality = document.getElementById('lateralidad').value;
  const informant = document.getElementById('informante').value;
  const relationship = document.getElementById('parentesco').value;
  const rh = document.getElementById('rh').value;
  const reliability = document.getElementById('confiabilidad').value;
  const hpeId = document.getElementById('eps').value;
  const maritalStatusId = document.getElementById('estadoCivil').value;
  const scholarshipId = document.getElementById('escolaridad').value;
  const placeBirth = document.getElementById('ciudades').value;
  const placeResidence = document.getElementById('residencia').value;
  const placeOrigin = document.getElementById('procedencia').value;

  const patient = {
    patientId,
    occupation,
    religion,   
    race,
    laterality,
    informant,
    relationship,
    rh,
    reliability,
    hpeId,
    maritalStatusId,
    scholarshipId,
    placeBirth,
    placeResidence,
    placeOrigin
  }

  const reasonConsultation = document.getElementById('motivoConsulta').value;
  const currentIllness = document.getElementById('enfermedad').value;
  const analysis = document.getElementById('analisis').value;
  const diagnostics = document.getElementById('diagnosticos').value;


  const clinic_history = {
    reasonConsultation,
    currentIllness,
    analysis,
    diagnostics,
    patientId
  }


  // Save person
  await fetch(`${API}/people/save`, {
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


  // Save patient
  await fetch(`${API}/patient/save`, {
          method: 'POST',
          headers: { 
            'Content-Type': 'application/json',
          },
          body: JSON.stringify(patient)
        })
        .then( response => response.json())
        .then( data => {
                        console.log(data)
        }).catch(error => console.error(error))


  // Save clinic_history
  await fetch(`${API}/clinic_history/save`, {
          method: 'POST',
          headers: { 
            'Content-Type': 'application/json',
          },
          body: JSON.stringify(clinic_history)
        })
        .then( response => response.json())
        .then( data => {
                        var clinicalHistoryIdResponse = data.clinicalHistoryId;
                        console.log(clinicalHistoryIdResponse);

                        // Init background
                        // Init physical_exam
                        // Init system_review
                        // Init management_plan
                        // Init neurological_exam

                        console.log('Fuera de scope' + clinicalHistoryIdResponse);
                        const backgroundId = clinicalHistoryIdResponse;
                        const physicalExamId = clinicalHistoryIdResponse;
                        const srId = clinicalHistoryIdResponse;
                        const mpId = clinicalHistoryIdResponse;
                        const neurologicalExamId = clinicalHistoryIdResponse;

                        console.log('backgroundId: ' + backgroundId);
                        console.log('physicalExamId: ' + physicalExamId);
                        console.log('srId: ' + srId);
                        console.log('mpId: ' + mpId);
                        console.log('neurologicalExamId: ' + neurologicalExamId);

                        fetch(`${API}/background/save`, {
                                method: 'POST',
                                headers: { 
                                  'Content-Type': 'application/json',
                                },
                                body: JSON.stringify({
                                      backgroundId
                                })
                              })
                              .then( response => response.json())
                              .then( data => {
                                          console.log("Init background")
                              }).catch(error => console.error(error))


                        fetch(`${API}/physical_exam/save`, {
                                method: 'POST',
                                headers: { 
                                  'Content-Type': 'application/json',
                                },
                                body: JSON.stringify({
                                      physicalExamId
                                })
                              })
                              .then( response => response.json())
                              .then( data => {
                                              console.log("Init physical_exam")
                              }).catch(error => console.error(error))


                        fetch(`${API}/system_review/save`, {
                                method: 'POST',
                                headers: { 
                                  'Content-Type': 'application/json',
                                },
                                body: JSON.stringify({
                                      srId
                                })
                              })
                              .then( response => response.json())
                              .then( data => {
                                              console.log("Init system_review")
                              }).catch(error => console.error(error))


                        fetch(`${API}/management_plan/save`, {
                                method: 'POST',
                                headers: { 
                                  'Content-Type': 'application/json',
                                },
                                body: JSON.stringify({
                                      mpId
                                })
                              })
                              .then( response => response.json())
                              .then( data => {
                                               console.log("Init management_plan")
                              }).catch(error => console.error(error))

                              
                        fetch(`${API}/neurological_exam/save`, {
                                method: 'POST',
                                headers: { 
                                  'Content-Type': 'application/json',
                                },
                                body: JSON.stringify({
                                      neurologicalExamId
                                })
                              })
                              .then( response => response.json())
                              .then( data => {
                                               console.log("Init neurological_exam")
                              }).catch(error => console.error(error))

        }).catch(error => console.error(error))

}



// Insertar ciudades a datalist
function insertCountries() {
  const nacimiento = document.querySelector("#ciudades");
  const residencia = document.querySelector("#residencia");
  const procedencia = document.querySelector("#procedencia");
  const template = ciudades.map((ciudad) => `<option value="${ciudad.code}">${ciudad.name}</option>`); 
  nacimiento.innerHTML = template;
  residencia.innerHTML = template;
  procedencia.innerHTML = template;
}




//funcion barra buscar
(function(document) {
  'use strict';

  var LightTableFilter = (function(Arr) {

    var _input;

    function _onInputEvent(e) {
      _input = e.target;
      var tables = document.getElementsByClassName(_input.getAttribute('data-table'));
      Arr.forEach.call(tables, function(table) {
        Arr.forEach.call(table.tBodies, function(tbody) {
          Arr.forEach.call(tbody.rows, _filter);
        });
      });
    }

    function _filter(row) {
      var text = row.textContent.toLowerCase(), val = _input.value.toLowerCase();
      row.style.display = text.indexOf(val) === -1 ? 'none' : 'table-row';
    }

    return {
      init: function() {
        var inputs = document.getElementsByClassName('light-table-filter');
        Arr.forEach.call(inputs, function(input) {
          input.oninput = _onInputEvent;
        });
      }
    };
  })(Array.prototype);

  document.addEventListener('readystatechange', function() {
    if (document.readyState === 'complete') {
      LightTableFilter.init();
    }
  });

})(document);