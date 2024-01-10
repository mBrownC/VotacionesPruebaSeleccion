const formulario = document.getElementById('formulario')
const inputs = document.querySelectorAll('#formulario input, select')
const expresiones = {
    nombre: /^[a-zA-ZÀ-ÿ\s]{3,}$/,
    alias: /^[a-zA-Z0-9_-]{5,}$/,
    rut: /^[-0-9.]{9,12}$/,
    mail: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/
}
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
        case 'rut':
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
document.addEventListener('DOMContentLoaded', () => {
    console.log('Script cargado correctamente.');

    const checkBoxes = document.querySelectorAll('input[type="checkbox"]');
    const submitButton = document.querySelector('button[type="submit"]');
    const mensajeCheckbox = document.getElementById('mensajeCheckbox');
    const formulario = document.getElementById('formulario');

    formulario.addEventListener('submit', (evento) => {
        evento.preventDefault();
        console.log('Formulario enviado con éxito.');
        // Agrega aquí cualquier lógica adicional que necesites antes de enviar el formulario
    });

    checkBoxes.forEach(checkbox => {
        checkbox.addEventListener('change', () => {
            const checkBoxChecked = document.querySelectorAll('input[type="checkbox"]:checked');
            submitButton.disabled = checkBoxChecked.length < 2;
            mensajeCheckbox.textContent = checkBoxChecked.length < 2
                ? 'Selecciona al menos dos opciones para poder enviar el formulario.'
                : '';
        });
    });
});

inputs.forEach((input) => {
    input.addEventListener('keyup', validarFormulario)
    input.addEventListener('blur', validarFormulario)
}
)
