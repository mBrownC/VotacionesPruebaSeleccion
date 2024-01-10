const formulario = document.getElementById('formulario');
const inputs = document.querySelectorAll('#formulario input, select');

// Declaración de expresiones regulares para validación de campos
const expresiones = {
    nombre: /^[a-zA-ZÀ-ÿ\s]{3,}$/,
    alias: /^[a-zA-Z0-9_-]{5,}$/,
    rut: /^[-0-9.]{9,12}$/,
    mail: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/
}

// Validación de campos según expresiones regulares
const validarFormulario = (evento) => {
    switch (evento.target.name) {
        case 'nombre':
            if (expresiones.nombre.test(evento.target.value)) {
                document.getElementById('labelInputsNombre').classList.remove('inputerror');
                document.getElementById('labelInputsNombre').classList.add('inputok');
            } else {
                document.getElementById('labelInputsNombre').classList.add('inputerror');
                document.getElementById('labelInputsNombre').classList.remove('inputok');
            }
            break;
        case 'alias':
            if (expresiones.alias.test(evento.target.value)) {
                document.getElementById('labelInputsAlias').classList.remove('inputerror');
                document.getElementById('labelInputsAlias').classList.add('inputok');
            } else {
                document.getElementById('labelInputsAlias').classList.add('inputerror');
                document.getElementById('labelInputsAlias').classList.remove('inputok');
            }
            break;
        case 'rut':
            if (expresiones.rut.test(evento.target.value)) {
                document.getElementById('labelInputsRut').classList.remove('inputerror');
                document.getElementById('labelInputsRut').classList.add('inputok');
            } else {
                document.getElementById('labelInputsRut').classList.add('inputerror');
                document.getElementById('labelInputsRut').classList.remove('inputok');
            }
            break;
        case 'email':
            if (expresiones.mail.test(evento.target.value)) {
                document.getElementById('labelInputsMail').classList.remove('inputerror');
                document.getElementById('labelInputsMail').classList.add('inputok');
            } else {
                document.getElementById('labelInputsMail').classList.add('inputerror');
                document.getElementById('labelInputsMail').classList.remove('inputok');
            }
            break;
    }
}
// validacion de minimo 2 checkbox tiqueados
document.addEventListener('DOMContentLoaded', () => {
    const checkBoxes = document.querySelectorAll('input[type="checkbox"]');
    checkBoxes.forEach(checkbox => {
        checkbox.addEventListener('change', () => {
            const checkBoxChecked = document.querySelectorAll('input[type="checkbox"]:checked');
            if (checkBoxChecked.length >= 2) {
                console.log("Se han seleccionado al menos dos checkboxes. Puedes enviar el formulario.");
            } else {
                console.log("Selecciona al menos dos checkboxes para poder enviar el formulario.");
            }
        });
    });
});
// escucha de eventos keyup y blur
inputs.forEach((input) => {
    input.addEventListener('keyup', validarFormulario)
    input.addEventListener('blur', validarFormulario)
});
