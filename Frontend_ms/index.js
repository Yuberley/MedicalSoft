const API = "http://localhost:8060/medicalsoft/api";

const HTMLResponse = document.querySelector("#personas");

fetch(`${API}/people`)
  .then(response => response.json())
  .then(people => {
    const template = people.map((person) => `<tr><th>${person.personId}</th>
                                                <td>${person.firstName}</td>
                                                <td>${person.lastName}</td>
                                                <td>${person.sex}</td>
                                                <td><a href="http://localhost:8060/medicalsoft/api/clinic_history/${person.personId}"><button type="button" class="btn btn-outline-info">Ver</button></a></td></tr>`);
    HTMLResponse.innerHTML = template;
  });