let arrImages = [];

let myDropzone = new Dropzone(".dropzone", {
    url: "./assets/img",
    maxFilesize: 20,
    maxFile: 20,
    acceptedFiles: "image/jpeg, image/png",
    addRemoveLinks: true,
    dictRemoveFile: "Quitar"
});

myDropzone.on("addedfile", file => {
    arrImages.push(file);
});

myDropzone.on("removedfile", file => {
    let i = arrImages.indexOf(file);
    arrImages.splice(i, 1);
});

function init() {
    $("#producto_form").on("submit", function (e) {
        guardar_editar(e);
    });
}

function guardar_editar(e) {
    e.preventDefault();
    var formData = new FormData($("#producto_form")[0]);


    var totalfiles = arrImages.length;
    for (var i = 0; i < totalfiles; i++) {
        formData.append("file[]", arrImages[i]);
    }
    $.ajax({
        url: "./controller/producto.php?op=guardar",
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function (data) {
            $("#prod_nom").val("");
            Dropzone.forElement(".dropzone").removeAllFiles(true);
        }
    })
}

init();