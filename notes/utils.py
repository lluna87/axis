
# Contar archivos en un directorio que tienen el nombre img_file.name
count = len([name for name in os.listdir(route) if os.path.isfile(name) and img_file.name in name ])

#obtener nombre de un archivo subido
file_name = unicodedata.normalize('NFKD', img_file.name).encode('ascii','ignore')
