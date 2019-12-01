Para actualizar la base de datos con nuevos modelos, django debe reconocerlos.
Esto se hace importandolos en el __init__.py del directorio models

Por ej:
    from comment import Comment