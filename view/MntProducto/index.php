<div class="container">
    <div class="row mt-4">
        <div class="col-md-12">
            <h1 class="text-center mb-3">Subir Imágenes a Dropzone</h1>
            <form method="POST" id="producto_form">
                <div class="form-group mb-5">
                    <label for="prod_nom" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="prod_nom" name="prod_nom" placeholder="Ingrese el Producto" required>
                </div>

                <div class="form-group">
                    <div class="dropzone">
                        <div class="dz-default dz-message">
                            <button class="dz-button" type="button">
                                <img src="./assets/upload.png" alt="" width="80px" height="80px">
                            </button>
                        </div>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary mt-3">
                    Guardar
                </button>
            </form>

        </div>
    </div>
</div>