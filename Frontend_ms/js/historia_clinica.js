// get Id in url
const locationId = location.href;
const splitURL = locationId.split('?')[1];
const patientId = splitURL.split("=")[1];

const locationHTTP = locationId.split(':')[1];
const DNS = locationHTTP.split("//")[1];

console.log(DNS);

const URL = `http://${DNS}:8060/medicalsoft/api/clinic_history/${patientId}`;


const basicDataPatientSelector = document.querySelector("#datosPrincipalesPaciente");
const dataPatientSelector = document.querySelector("#datosDelPaciente");
const tablePhysicalExam = document.querySelector("#tablaExamenFisico");
const tableEvolutions = document.querySelector("#tablaEvolicion");
const fieldDiagnostic = document.querySelector("#campoEvolución");
const navClinicHistory = document.querySelector("#navegacionHistoria");
const textConsult = document.querySelector("#motivoConsulta");
const textDisease = document.querySelector("#enfermedad");


async function getClinicHistory() {
    await fetch(URL)
                .then(response => response.json())
                .then((patient) => {
                    const basicDataPatient = `<div class="row col">
                                            <div class="col-4">• N° Cedula</div>
                                            <div class="col">${patient.patient.patientId}</div>
                                        </div>
                                        <div class="row col">
                                            <div class="col-4">• Nombre</div>
                                            <div class="col">${patient.patient.person.firstName + ' ' + patient.patient.person.lastName}</div>
                                        </div>
                                        <div class="row col">
                                            <div class="col-4">• Edad</div>
                                            <div class="col">${patient.patient.person.age}</div>
                                        </div>
                                        <div class="row col">
                                            <div class="col-4">• Sexo</div>
                                            <div class="col">${patient.patient.person.sex}</div>
                                        </div>
                                        <div class="row col">
                                            <div class="col-4">• EPS</div>
                                            <div class="col">${patient.patient.hpe.hpsName}</div>
                                        </div>`;
                    basicDataPatientSelector.innerHTML = basicDataPatient;


                    const dataPatient = `<div class="row col">
                                            <div class="col-5 fw-bold">• Ingreso</div>
                                            <div class="col">${patient.clinicalHistoryDate}</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5  fw-bold">• RH</div>
                                            <div class="col">${patient.patient.rh}</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5  fw-bold">• Ocupación</div>
                                            <div class="col">${patient.patient.occupation}</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5  fw-bold">• Nacimiento</div>
                                            <div class="col">${patient.patient.place.placeBirth}</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5  fw-bold">• Residencia</div>
                                            <div class="col">${patient.patient.place.placeResidence}</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5  fw-bold">• Precedencia</div>
                                            <div class="col">${patient.patient.place.placeOrigin}</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5  fw-bold">• Escolaridad</div>
                                            <div class="col">${patient.patient.scholarship.scholarshipName}</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5  fw-bold">• Estado civil</div>
                                            <div class="col">${patient.patient.maritalStatus.maritalStatusName}</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5  fw-bold">• Religión</div>
                                            <div class="col">${patient.patient.religion}</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5  fw-bold">• Raza</div>
                                            <div class="col">${patient.patient.race}</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5  fw-bold">• Lateralidad</div>
                                            <div class="col">${patient.patient.reliability}</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5  fw-bold">• Informante</div>
                                            <div class="col">${patient.patient.informant}</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5  fw-bold">• Parentesto</div>
                                            <div class="col">${patient.patient.relationship}</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5  fw-bold">• Confiabilidad</div>
                                            <div class="col">${patient.patient.reliability}</div>
                                        </div>`;
                    dataPatientSelector.innerHTML = dataPatient;


                    const contentPhysicalExam = `<div class="row col">
                                                    <div class="col-5  fw-bold">• Torax</div>
                                                    <div class="col">${patient.physicalExam.chest}</div>
                                                </div>
                                                <div class="row col">
                                                    <div class="col-5  fw-bold">• Abdome</div>
                                                    <div class="col">${patient.physicalExam.abdomen}</div>
                                                </div>
                                                <div class="row col">
                                                    <div class="col-5  fw-bold">• Extremidades</div>
                                                    <div class="col">${patient.physicalExam.extremities}</div>
                                                </div>
                                                <div class="row col">
                                                    <div class="col-5  fw-bold">• Columna</div>
                                                    <div class="col">${patient.physicalExam.column}</div>
                                                </div>`;
                    tablePhysicalExam.innerHTML = contentPhysicalExam;


                    const contentEvolution = `<div class="list-group-item list-group-item-action d-flex gap-3 py-3">
                                                <i class="fab fa-creative-commons-sampling" ></i>
                                                <div class="d-flex gap-2 w-100 justify-content-between">
                                                <div>
                                                    <h6 class="mb-0">Subjetivo</h6>
                                                    <p class="mb-0 opacity-75">Some placeholder content in a paragraph.</p>
                                                </div>
                                                </div>
                                            </div>
                            
                                            <div class="list-group-item list-group-item-action d-flex gap-3 py-3">
                                                <i class="fab fa-creative-commons-sampling" ></i>
                                                <div class="d-flex gap-2 w-100 justify-content-between">
                                                <div>
                                                    <h6 class="mb-0">Objetivo</h6>
                                                    <p class="mb-0 opacity-75">Some placeholder content in a paragraph.</p>
                                                </div>
                                                </div>
                                            </div>
                            
                                            <div class="list-group-item list-group-item-action d-flex gap-3 py-3">
                                                <i class="fab fa-creative-commons-sampling" ></i>
                                                <div class="d-flex gap-2 w-100 justify-content-between">
                                                <div>
                                                    <h6 class="mb-0">Análisis</h6>
                                                    <p class="mb-0 opacity-75">Some placeholder content in a paragraph.</p>
                                                </div>
                                                </div>
                                            </div>`;

                        

                    const diagnostics = `<p>${patient.diagnostics}</p>`;
                    fieldDiagnostic.innerHTML = diagnostics;


                    const contentNavHistory = `<li class="nav-item">
                                                    <a class="nav-link active border border-dark fw-bold" aria-current="page" href="">Historia Clínica</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="../signos_vitales/?patientId=${patient.patient.patientId}&systemReviewId=${patient.systemReview.srId}&backgroundId=${patient.background.backgroundId}&neurologicalExamId=${patient.neurologicalExam.neurologicalExamId}">Signos Vitales</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="../examenes_antecedenstes/?patientId=${patient.patient.patientId}&systemReviewId=${patient.systemReview.srId}&backgroundId=${patient.background.backgroundId}&neurologicalExamId=${patient.neurologicalExam.neurologicalExamId}">Examenes y antecedentes</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="../plan_manejo/?patientId=${patient.patient.patientId}&systemReviewId=${patient.systemReview.srId}&backgroundId=${patient.background.backgroundId}&neurologicalExamId=${patient.neurologicalExam.neurologicalExamId}">Plan de manejo</a>
                                                </li>`;
                    navClinicHistory.innerHTML = contentNavHistory;

                    const contentConsult = `<p>${patient.reasonConsultation}</p>`;
                    textConsult.innerHTML = contentConsult;


                    const contentDisease = `<div>${patient.currentIllness}</div>`;
                    textDisease.innerHTML = contentDisease;
                    

                }).catch(error => console.log(error));
}

getClinicHistory();