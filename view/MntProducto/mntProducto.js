const form = document.querySelector("#producto_form");


let arrImages = [];

let myDropzone = new Dropzone(".dropzone", {
    url: "./assets/img",
    maxFilesize: 20,
    maxFile: 2,
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
        guardar(e);
    });
}

function guardar(e) {
    e.preventDefault();

    // validar campo input
    var formData = new FormData($("#producto_form")[0]);

    const prod_nom = document.querySelector("#prod_nom").value;
    if (prod_nom === "") {
        document.querySelector(".main__error").classList.add("active");
        setTimeout(() => {
            document.querySelector(".main__error").classList.remove("active");
        }, 5000);
        return;
    }
    document.querySelector(".main__error").classList.remove("active");

    document.querySelector(".main__success").classList.add("active");
    setTimeout(() => {
        document.querySelector(".main__success").classList.remove("active");
    }, 4000);
    // ---------------------------------------------------------

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