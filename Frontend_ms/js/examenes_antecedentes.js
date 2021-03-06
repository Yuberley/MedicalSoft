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

const URL_NAV = `http://${DNS}:8060/medicalsoft/api/`;


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


const URLSystemReview = `http://${DNS}:8060/medicalsoft/api/system_review`;
const URLNeurologicalExam = `http://${DNS}:8060/medicalsoft/api/neurological_exam`;
const URLBackground = `http://${DNS}:8060/medicalsoft/api/background`;

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
        .then((background) => {var dataBackground = `<tr>
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



async function showBackgroundForm() {
    const psychosocial = document.getElementById('psicosociales');
    const relatives = document.getElementById('familiares');
    const surgical = document.getElementById('quirurgicos');
    const hospitable = document.getElementById('hospitalarios');
    const pathological = document.getElementById('patologicos');
    const pharmacological = document.getElementById('farmacologicos');
    const toxicAllergies = document.getElementById('toxicoAlergicos');
    const traumatic = document.getElementById('traumaticos');
    const obstetricGynecology = document.getElementById('ginecoObstetrico');
    const immunological = document.getElementById('inmunologicos');
    const psychiatric = document.getElementById('psiquiatricos');
    await fetch(`${URLBackground}/${backgroundId}`)
                .then(response => response.json())
                .then((background) => {
                    psychosocial.innerHTML = background.psychosocial;
                    relatives.value = background.relatives;
                    surgical.value = background.surgical;
                    hospitable.value = background.hospitable;
                    pathological.value = background.pathological;
                    pharmacological.value = background.pharmacological;
                    toxicAllergies.value = background.toxicAllergies;
                    traumatic.value = background.traumatic;
                    obstetricGynecology.value = background.obstetricGynecology;
                    immunological.value = background.immunological;
                    psychiatric.value = background.psychiatric;
                })
}

document.getElementById("botonAntecedentes").onclick = function(){
    showBackgroundForm();
}


async function updateBackground() {
    const psychosocial = document.getElementById('psicosociales').value;
    const relatives = document.getElementById('familiares').value;
    const surgical = document.getElementById('quirurgicos').value;
    const hospitable = document.getElementById('hospitalarios').value;
    const pathological = document.getElementById('patologicos').value;
    const pharmacological = document.getElementById('farmacologicos').value;
    const toxicAllergies = document.getElementById('toxicoAlergicos').value;
    const traumatic = document.getElementById('traumaticos').value;
    const obstetricGynecology = document.getElementById('ginecoObstetrico').value;
    const immunological = document.getElementById('inmunologicos').value;
    const psychiatric = document.getElementById('psiquiatricos').value;

    const updateBackground = {
        backgroundId,
        psychosocial,
        relatives,
        surgical,
        hospitable,
        pathological,
        pharmacological,
        toxicAllergies,
        traumatic,
        obstetricGynecology,
        immunological,
        psychiatric
    }

    // Save background
    await fetch(`${URLBackground}/update`, {
        method: 'PUT',
        headers: { 
        'Content-Type': 'application/json',
        },
        body: JSON.stringify(updateBackground)
    })
    .then( response => response.json())
    .then( data => {
                    console.log(data)
    }).catch(error => console.error(error))

}

document.getElementById("guardarAntecedentes").onclick = function(){
    updateBackground();
}








async function showNeurologicalExamForm() {

    const mental = document.getElementById('mental');
    const cranialNerves = document.getElementById('paresCraneales');
    const spinalMotor = document.getElementById('motorRaquideo');
    const spinalSesitive = document.getElementById('sensitivoRaquideo');
    const reflexes = document.getElementById('reflejos');
    const coordination = document.getElementById('coordinacion');
    const march = document.getElementById('marcha');

    await fetch(`${URLNeurologicalExam}/${neurologicalExamId}`)
                .then(response => response.json())
                .then((neurologicalExam) => {
                    mental.value = neurologicalExam.mental;
                    cranialNerves.value = neurologicalExam.cranialNerves;
                    spinalMotor.value = neurologicalExam.spinalMotor;
                    spinalSesitive.value = neurologicalExam.spinalSesitive;
                    reflexes.value = neurologicalExam.reflexes;
                    coordination.value = neurologicalExam.coordination;
                    march.value = neurologicalExam.march;
                })
}

document.getElementById("botonExamenNeurologico").onclick = function(){
    showNeurologicalExamForm();
}

async function updateNeurologicalExam() {

    const mental = document.getElementById('mental').value;
    const cranialNerves = document.getElementById('paresCraneales').value;
    const spinalMotor = document.getElementById('motorRaquideo').value;
    const spinalSesitive = document.getElementById('sensitivoRaquideo').value;
    const reflexes = document.getElementById('reflejos').value;
    const coordination = document.getElementById('coordinacion').value;
    const march = document.getElementById('marcha').value;

    const updateNeurologicalExam = {
        neurologicalExamId,
        mental,
        cranialNerves,
        spinalMotor,
        spinalSesitive,
        reflexes,
        coordination,
        march
    }

    // Save neurologicalExam
    await fetch(`${URLNeurologicalExam}/update`, {
        method: 'PUT',
        headers: { 
        'Content-Type': 'application/json',
        },
        body: JSON.stringify(updateNeurologicalExam)
    })
    .then( response => response.json())
    .then( data => {
                    console.log(data)
    }).catch(error => console.error(error))
}

document.getElementById("guardarExamenNeurologico").onclick = function(){
    updateNeurologicalExam();
}










async function showSystemReview() {

    const neuropsychiatric = document.getElementById('neuropsiquiatrico');
    const mammary = document.getElementById('mama');
    const generalSymptoms = document.getElementById('sintomasGenerales');
    const headSenses = document.getElementById('cabezaSentidos');
    const lymphoreticular = document.getElementById('linforreticular');
    const cardiopulmonary = document.getElementById('cardioPulmonar');
    const gastrointestinal = document.getElementById('gastroIntestinal');
    const psychogenic = document.getElementById('psicogenicos');
    const gynecologicalUrinary = document.getElementById('genitourinario');
    const skeletalMuscle = document.getElementById('musculoEsqueletico');
    const pierlAppendages = document.getElementById('pielFanereas');
    const endocrine = document.getElementById('endocrino');
    const venereal = document.getElementById('venereos');

    await fetch(`${URLSystemReview}/${systemReviewId}`)
                .then(response => response.json())
                .then((systemReview) => {
                    neuropsychiatric.value = systemReview.neuropsychiatric;
                    mammary.value = systemReview.mammary;
                    generalSymptoms.value = systemReview.generalSymptoms;
                    headSenses.value = systemReview.headSenses;
                    lymphoreticular.value = systemReview.lymphoreticular;
                    cardiopulmonary.value = systemReview.cardiopulmonary;
                    gastrointestinal.value = systemReview.gastrointestinal;
                    psychogenic.value = systemReview.psychogenic;
                    gynecologicalUrinary.value = systemReview.gynecologicalUrinary;
                    skeletalMuscle.value = systemReview.skeletalMuscle;
                    pierlAppendages.value = systemReview.pierlAppendages;
                    endocrine.value = systemReview.endocrine;
                    venereal.value = systemReview.venereal;
                })
}

document.getElementById("botonRevisionSistema").onclick = function(){
    showSystemReview();
}


async function updateSystemReview() {
    const srId = systemReviewId;
    const neuropsychiatric = document.getElementById('neuropsiquiatrico').value;
    const mammary = document.getElementById('mama').value;
    const generalSymptoms = document.getElementById('sintomasGenerales').value;
    const headSenses = document.getElementById('cabezaSentidos').value;
    const lymphoreticular = document.getElementById('linforreticular').value;
    const cardiopulmonary = document.getElementById('cardioPulmonar').value;
    const gastrointestinal = document.getElementById('gastroIntestinal').value;
    const psychogenic = document.getElementById('psicogenicos').value;
    const gynecologicalUrinary = document.getElementById('genitourinario').value;
    const skeletalMuscle = document.getElementById('musculoEsqueletico').value;
    const pierlAppendages = document.getElementById('pielFanereas').value;
    const endocrine = document.getElementById('endocrino').value;
    const venereal = document.getElementById('venereos').value;

    const updateSystemReview = {
        srId,
        neuropsychiatric,
        mammary,
        generalSymptoms,
        headSenses,
        lymphoreticular,
        cardiopulmonary,
        gastrointestinal,
        psychogenic,
        gynecologicalUrinary,
        skeletalMuscle,
        pierlAppendages,
        endocrine,
        venereal
    }

    // Save neurologicalExam
    await fetch(`${URLSystemReview}/update`, {
        method: 'PUT',
        headers: { 
        'Content-Type': 'application/json',
        },
        body: JSON.stringify(updateSystemReview)
    })
    .then( response => response.json())
    .then( data => {
                    console.log(data)
    }).catch(error => console.error(error))
}

document.getElementById("guardarRevisionSistema").onclick = function(){
    updateSystemReview();
}
