<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Grupos de Investigación</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-4">

  <h1 class="text-center mb-4">Facultad de Ingeniería</h1>
  <h3 class="mb-3">Grupos de Investigación</h3>

  <!-- Lista de grupos -->
  <ul id="listaGrupos" class="list-group mb-4">
    <li class="list-group-item list-group-item-action" data-grupo="COMBA I+D">COMBA I+D</li>
    <li class="list-group-item list-group-item-action" data-grupo="GIEIAM">GIEIAM</li>
  </ul>

  <!-- Info del grupo seleccionado -->
  <div id="infoGrupo" class="card mb-4 p-3" style="display:none;"></div>

  <!-- Formulario docente -->
  <h3>Registrar Docente Investigador</h3>
  <form id="formDocente" class="mb-4">
    <input type="text" class="form-control mb-2" name="nombre" placeholder="Nombre docente" required>
    <input type="text" class="form-control mb-2" name="formacion" placeholder="Formación académica" required>
    <input type="text" class="form-control mb-2" name="horario" placeholder="Horario de atención" required>
    <select class="form-control mb-2" name="grupo">
      <option value="COMBA I+D">COMBA I+D</option>
      <option value="GIEIAM">GIEIAM</option>
    </select>
    <button type="submit" class="btn btn-success">Registrar Docente</button>
  </form>

  <!-- Formulario estudiante -->
  <h3>Vincular Estudiante a Semillero COMBA I+D</h3>
  <form id="formEstudiante" class="mb-4">
    <input type="text" class="form-control mb-2" name="nombre" placeholder="Nombre estudiante" required>
    <input type="text" class="form-control mb-2" name="codigo" placeholder="Código estudiante" required>
    <input type="text" class="form-control mb-2" name="carrera" placeholder="Carrera" required>
    <select class="form-control mb-2" name="semillero">
      <option value="Comba">Comba</option>
      <option value="Informa">Informa</option>
    </select>
    <button type="submit" class="btn btn-success">Vincular Estudiante</button>
  </form>

  <!-- Formulario actividad -->
  <h3>Registrar Actividad en Semillero</h3>
  <form id="formActividad" class="mb-4">
    <select class="form-control mb-2" name="tipo" required>
      <option value="">Seleccione tipo</option>
      <option value="Taller">Taller</option>
      <option value="Conferencia">Conferencia</option>
      <option value="Evento">Evento</option>
    </select>
    <input type="date" class="form-control mb-2" name="fecha" required>
    <input type="time" class="form-control mb-2" name="hora" required>
    <input type="number" class="form-control mb-2" name="limite" placeholder="Límite de asistentes" required>
    <textarea class="form-control mb-2" name="resumen" placeholder="Resumen de la actividad" required></textarea>
    <button type="submit" class="btn btn-success">Registrar Actividad</button>
  </form>

  <!-- Lista de actividades -->
  <h3>Actividades Registradas</h3>
  <ul id="listaActividades" class="list-group mb-5"></ul>

  <script>
    // Datos simulados de los grupos (GET)
    const gruposInfo = {
      "COMBA I+D": {
        nombre: "COMBA I+D",
        objetivos: "Investigar en computación, matemáticas y aplicaciones.",
        director: "Dr. Juan Pérez"
      },
      "GIEIAM": {
        nombre: "GIEIAM",
        objetivos: "Estudio de ingeniería industrial y gestión ambiental.",
        director: "Dra. María Gómez"
      }
    };

    const listaGrupos = document.getElementById("listaGrupos");
    const infoGrupo = document.getElementById("infoGrupo");
    const listaActividades = document.getElementById("listaActividades");

    // Mostrar info del grupo (simula GET)
    listaGrupos.addEventListener("click", e => {
      if (e.target.dataset.grupo) {
        let grupo = e.target.dataset.grupo;
        let info = gruposInfo[grupo];
        infoGrupo.style.display = "block";
        infoGrupo.innerHTML = `
          <h4>${info.nombre}</h4>
          <p><b>Objetivos:</b> ${info.objetivos}</p>
          <p><b>Director:</b> ${info.director}</p>
        `;
      }
    });

    // Función para POST simulado
    async function enviarFormulario(form, tipo) {
      let datos = Object.fromEntries(new FormData(form).entries());
      console.log(tipo + " enviado:", datos);
      let res = await fetch("https://jsonplaceholder.typicode.com/posts", {
        method: "POST",
        headers: {"Content-Type": "application/json"},
        body: JSON.stringify(datos)
      });
      let r = await res.json();
      alert(tipo + " registrado correctamente: " + JSON.stringify(r));
      form.reset();
    }

    // Formulario Docente
    document.getElementById("formDocente").addEventListener("submit", e=>{
      e.preventDefault();
      enviarFormulario(e.target, "Docente");
    });

    // Formulario Estudiante
    document.getElementById("formEstudiante").addEventListener("submit", e=>{
      e.preventDefault();
      enviarFormulario(e.target, "Estudiante");
    });

    // Formulario Actividad
    document.getElementById("formActividad").addEventListener("submit", e=>{
      e.preventDefault();
      let datos = Object.fromEntries(new FormData(e.target).entries());
      let li = document.createElement("li");
      li.className = "list-group-item";
      li.innerHTML = `<b>${datos.tipo}</b> - ${datos.fecha} ${datos.hora} 
                      (Límite: ${datos.limite})<br>${datos.resumen}`;
      listaActividades.appendChild(li);
      enviarFormulario(e.target, "Actividad");
    });
  </script>
</body>
</html>
