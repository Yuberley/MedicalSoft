// get Id in url
const locationId = location.href;
const splitURL = locationId.split('?')[1];
const patientId = splitURL.split("=")[1];

console.log(patientId)

const URL = `http://localhost:8060/medicalsoft/api/clinic_history/${patientId}`;

console.log(URL)

const basicDataPatientSelector = document.querySelector("#datosPrincipalesPaciente");
const dataPatientSelector = document.querySelector("#datosDelPaciente");

function getClinicHistory() {
                fetch(URL)
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
                                            <div class="col-5">• Ingreso</div>
                                            <div class="col">${patient}</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5">• RH</div>
                                            <div class="col">O+</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5">• Ocupación</div>
                                            <div class="col">Ingeniero de sistemas</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5">• Nacimiento</div>
                                            <div class="col">Sogamoso</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5">• Residencia</div>
                                            <div class="col">Villavicencio</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5">• Precedencia</div>
                                            <div class="col">Villavicencio</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5">• Escolaridad</div>
                                            <div class="col">Universitario</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5">• Estado civil</div>
                                            <div class="col">Soltero</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5">• Religión</div>
                                            <div class="col"> N/A</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5">• Raza</div>
                                            <div class="col">N/A</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5">• Lateralidad</div>
                                            <div class="col">Derecho</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5">• Informante</div>
                                            <div class="col">Prueba</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5">• Parentesto</div>
                                            <div class="col">Texto aquí</div>
                                        </div>
                                        <hr class="dropdown-divider">
                                        <div class="row col">
                                            <div class="col-5">• Confiabilidad</div>
                                            <div class="col">Confiado</div>
                                        </div>`;
                    dataPatientSelector.innerHTML = dataPatient;

                }).catch(error => console.log(error));
}

getClinicHistory();