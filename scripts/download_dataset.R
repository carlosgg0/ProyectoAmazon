directories <- c("data", "data/raw", "data/clean")
url <- "https://www.kaggle.com/api/v1/datasets/download/arhamrumi/amazon-product-reviews"

zip_file <- "./data/raw/amazon-product-reviews.zip"
csv_file <- "./data/raw/Reviews.csv"
dest_dir <- "./data/raw"

message("Directorio actual: ", getwd())

for (dir in directories) {
  if (!dir.exists(dir)) dir.create(dir)
}

if (!file.exists(csv_file)) {
  message("Descargando dataset de Amazon...")
  download.file(url, destfile = zip_file, mode = "wb")
  
  if (file.exists(zip_file)) {
    message("Descomprimiendo...")
    unzip(zipfile = zip_file, exdir = dest_dir)
    
    message("Ficheros descargados: ", list.files(dest_dir))
    file.remove(zip_file)
  } else {
    stop("Error: No se pudo descargar el dataset")
  }
  
} else {
  message("Usted ya posee un fichero: ", csv_file)
}



