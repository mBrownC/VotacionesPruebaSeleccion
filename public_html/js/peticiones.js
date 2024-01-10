const slcRegion = document.getElementById('region')
slcRegion.addEventListener('change', getComuna)
slcComuna = document.getElementById('comuna')

function fetchAndSendData(url, formData, targetElement) {
    return fetch(url, {
        method: 'POST',
        body: formData,
        mode: 'cors'
    })
        .then((response) => response.json())
        .then(data => {
            targetElement.innerHTML = data
        })
        .catch(err => console.log(err))
}

function getComuna() {
    let region_id = slcRegion.value;
    let url = '/VotacionPrueba/backend/getRegiones.php'
    let formData = new FormData()
    formData.append('id_region', region_id)
    fetchAndSendData(url, formData, slcComuna)
}