<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Subir Imágenes</h1>

            <form method="POST" id="producto_form">

                <div class="form-group">
                    <label class="form-label" for="prod_nom">Nombre</label>
                    <input type="text" class="form-control" id="prod_nom" name="prod_nom" placeholder="Ingrese Producto" required>
                </div>

                <br>

                <div class="form-group">
                    <div class="dropzone">
                        <div class="dz-default dz-message">
                            <button class="dz-button" type="button">
                                <img src="./assets/upload.png" alt="">
                            </button>
                        </div>
                    </div>
                </div>

                <br>

                <button type="submit" class="btn btn-primary">Guardar</button>

            </form>
        </div>
    </div>
</div>