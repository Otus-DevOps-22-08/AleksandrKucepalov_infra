
terraform {
  backend "s3" {
    endpoint = "storage.yandexcloud.net"
    bucket   = "otus-tf"
    key      = "stage/terraform.tfstate"
    region   = "ru-central1"


    access_key = "YCAJEpk3s7uvP1U-hIZ5jT9lQ"
    secret_key = "YCP8UkXIogD3awR5Aj08U5i_BBOyfLygvTsqqgVU"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
