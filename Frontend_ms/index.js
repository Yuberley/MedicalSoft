const API = "http://localhost:8060/medicalsoft/api";

const HTMLResponse = document.querySelector("#personas");

async function getPeople(){
  const result = await fetch(`${API}/people`)
                .then(response => response.json())
                .then(people => {
                  var template = people.map((person) => `<tr><th>${person.personId}</th>
                                                              <td>${person.firstName}</td>
                                                              <td>${person.lastName}</td>
                                                              <td>${person.sex}</td>
                                                              <td><a href="/medicalsoft/historia_clinica/?id=${person.personId}">
                                                                    <button type="button" class="btn btn-outline-info">Historia</button>
                                                                  </a></td></tr>`);
                    HTMLResponse.innerHTML = template;
                  
                });
                
                
}

getPeople();


