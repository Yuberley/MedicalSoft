// getters Ids by url
const locationIds = location.href.split('?')[1];
const patientId = locationIds.split('&')[0].split('=')[1];
const systemReviewId = locationIds.split('&')[1].split('=')[1];
const backgroundId = locationIds.split('&')[2].split('=')[1];
const neurologicalExamId = locationIds.split('&')[3].split('=')[1];

console.log(patientId)
console.log(systemReviewId)
console.log(backgroundId)
console.log(neurologicalExamId)

const URL_NAV = `http://localhost:8060/medicalsoft/api/`;


const navClinicHistory = document.querySelector("#navegacionHistoria");

function NavigatorClinicHistory() {
    const contentNavHistory = `<li class="nav-item">
                                    <a class="nav-link" aria-current="page" href="../historia_clinica/?patientId=${patientId}">Historia Clínica</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="../signos_vitales/?patientId=${patientId}&systemReviewId=${systemReviewId}&backgroundId=${backgroundId}&neurologicalExamId=${neurologicalExamId}">Signos Vitales</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active border border-dark fw-bold" href="../examenes_antecedenstes/?patientId=${patientId}&systemReviewId=${systemReviewId}&backgroundId=${backgroundId}&neurologicalExamId=${neurologicalExamId}">Examenes y antecedentes</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="../plan_manejo/?patientId=${patientId}&systemReviewId=${systemReviewId}&backgroundId=${backgroundId}&neurologicalExamId=${neurologicalExamId}">Plan de manejo</a>
                                </li>`;
                    navClinicHistory.innerHTML = contentNavHistory;
}

NavigatorClinicHistory();


const URLSystemReview = `http://localhost:8060/medicalsoft/api/system_review`;
const URLNeurologicalExam = `http://localhost:8060/medicalsoft/api/neurological_exam`;
const URLBackground = `http://localhost:8060/medicalsoft/api/background`;

const systemReviewSelector = document.querySelector("#revisionSistema");
const neurologicalExamSelector = document.querySelector("#examenNeurologico");
const backgroundSelector = document.querySelector("#antecedentes");

async function getSystemReview() {
         await fetch(`${URLSystemReview}/${systemReviewId}`)
                .then(response => response.json())
                .then((review) => {const dataSystemReview = `<tr>
                                                                <th>Neuropsiquiatrico:</th>
                                                                <td>${review.neuropsychiatric}</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Mama:</th>
                                                                <td>${review.mammary}</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Sintomas Generales:</th>
                                                                <td>${review.generalSymptoms}</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Cabeza y Sentidos:</th>
                                                                <td>${review.headSenses}</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Linforreticular:</th>
                                                                <td>${review.lymphoreticular}</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Cardio Pulmonar:</th>
                                                                <td>${review.cardiopulmonary}</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Gastro Intestinal:</th>
                                                                <td>${review.gastrointestinal}</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Psicogenicos:</th>
                                                                <td>${review.psychogenic}</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Genitourinario:</th>
                                                                <td>${review.gynecologicalUrinary}</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Musculo Esqueletico:</th>
                                                                <td>${review.skeletalMuscle}</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Piel Fanereas:</th>
                                                                <td>${review.pierlAppendages}</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Endocrino:</th>
                                                                <td>${review.endocrine}</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Venereos:</th>
                                                                <td>${review.venereal}</td>
                                                            </tr>`;  
                systemReviewSelector.innerHTML = dataSystemReview;

                }).catch(error => console.log(error));
}


async function getNeurologicalExam() {
    await fetch(`${URLNeurologicalExam}/${neurologicalExamId}`)
        .then(response => response.json())
        .then((neurologicalExam) => {const dataNeurologicalExam = `<tr>
                                                                        <th>Mental:</th>
                                                                        <td>${neurologicalExam.mental}</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Pares Craneales:</th>
                                                                        <td>${neurologicalExam.cranialNerves}</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Motor Raquideo:</th>
                                                                        <td>${neurologicalExam.spinalMotor}</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Sensitivo Raquideo:</th>
                                                                        <td>${neurologicalExam.spinalSesitive}</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Reflejos:</th>
                                                                        <td>${neurologicalExam.reflexes}</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Coordinacion:</th>
                                                                        <td>${neurologicalExam.coordination}</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Marcha:</th>
                                                                        <td>${neurologicalExam.march}</td>
                                                                    </tr>`;  
                         neurologicalExamSelector.innerHTML = dataNeurologicalExam;

                        }).catch(error => console.log(error));
}


async function getBackground() {
    await fetch(`${URLBackground}/${backgroundId}`)
        .then(response => response.json())
        .then((background) => {const dataBackground = `<tr>
                                                            <th>Psicosociales:</th>
                                                            <td>${background.psychosocial}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Familiares:</th>
                                                            <td>${background.relatives}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Quirurgicos:</th>
                                                            <td>${background.surgical}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Hospitalarios:</th>
                                                            <td>${background.hospitable}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Patologicos:</th>
                                                            <td>${background.pathological}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Farmacologicos:</th>
                                                            <td>${background.pharmacological}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Toxico Alergicos:</th>
                                                            <td>${background.toxicAllergies}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Traumaticos:</th>
                                                            <td>${background.traumatic}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Gineco Obstetrico:</th>
                                                            <td>${background.obstetricGynecology}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Inmunologicos:</th>
                                                            <td>${background.immunological}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Psiquiatricos:</th>
                                                            <td>${background.psychiatric}</td>
                                                        </tr>`;  
                        backgroundSelector.innerHTML = dataBackground;

                        }).catch(error => console.log(error));
}

getSystemReview();
getNeurologicalExam();
getBackground();