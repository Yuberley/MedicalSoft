// getters Ids by url
const locationIds = location.href.split('?')[1];
const patientId = locationIds.split('&')[0].split('=')[1];
const systemReviewId = locationIds.split('&')[1].split('=')[1];
const backgroundId = locationIds.split('&')[2].split('=')[1];
const neurologicalExamId = locationIds.split('&')[3].split('=')[1];

const locationAll = location.href;
const locationHTTP = locationAll.split(':')[1];
const DNS = locationHTTP.split("//")[1];

console.log(DNS);

const navClinicHistory = document.querySelector("#navegacionSignosVitales");

function NavigatorClinicHistory() {
    const contentNavHistory = `<li class="nav-item">
                                    <a class="nav-link" aria-current="page" href="../historia_clinica/?patientId=${patientId}">Historia Clínica</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active border border-dark fw-bold" href="../signos_vitales/?patientId=${patientId}&systemReviewId=${systemReviewId}&backgroundId=${backgroundId}&neurologicalExamId=${neurologicalExamId}">Signos Vitales</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="../examenes_antecedenstes/?patientId=${patientId}&systemReviewId=${systemReviewId}&backgroundId=${backgroundId}&neurologicalExamId=${neurologicalExamId}">Examenes y antecentes</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="../plan_manejo/?patientId=${patientId}&systemReviewId=${systemReviewId}&backgroundId=${backgroundId}&neurologicalExamId=${neurologicalExamId}">Plan de Manejo</a>
                                </li>`;
                              
                    navClinicHistory.innerHTML = contentNavHistory;
}

NavigatorClinicHistory();

const URLVitalSigns = `http://${DNS}:8060/medicalsoft/api/vital_signs`;

const vitalSignsSelector = document.getElementById('signosVitales');

async function getVitalSigns(){
   await fetch(`${URLVitalSigns}/${patientId}`)
                .then(response => response.json())
                .then(vitalSigns => {
                  for (let rows of vitalSigns) {
                    vitalSignsSelector.innerHTML += `<tr>
                                                    <th>${rows.vitalSignsDate}</th>
                                                    <td>${rows.bloodPressure}</td>
                                                    <td>${rows.heartRate}</td>
                                                    <td>${rows.breathingFrequency}</td>
                                                    <td>${rows.oxygenSaturation}</td>
                                                    <td>${rows.bloodGlucose}</td>
                                                    <td><button type="button" class="btn btn-warning"><i class="fas fa-edit"></i></button></td>
                                                </tr>`
                  }
                  
                });
                
                
}

getVitalSigns();