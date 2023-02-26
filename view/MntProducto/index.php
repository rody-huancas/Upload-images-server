<main class="main">
    <h1 class="main__title">Image<span>Boxx</span></h1>
    <div class="main__container">
        <div class="main__error">
            <span class="main__error-title">¡Error!</span>
            <p class="main__error-description">Debes llenar los campos</p>
        </div>
        <form class="main__form" method="POST" id="producto_form">
            <div class="main__group">
                <div class="main__group-form">
                    <label class="main__label" for="prod_nom">Nombre del Producto:</label>
                    <input type="text" class="main__input" id="prod_nom" name="prod_nom" placeholder="Ingrese el nombre del producto">
                </div>
                <br>
                <div class="main__dropzone">
                    <div class="dropzone">
                        <div class="dz-default dz-message">
                            <button class="dz-button" type="button">
                                <i class="ri-upload-cloud-fill"></i>
                            </button>
                        </div>
                    </div>
                </div>
                <br>
            </div>
            <button type="submit" class="main__button">Guardar</button>
        </form>
    </div>
</main>