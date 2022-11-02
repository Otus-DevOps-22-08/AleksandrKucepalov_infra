variable "cloud_id" {
  description = "Cloud"
}
variable "folder_id" {
  description = "Folder"
}
variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable "image_id" {
  description = "Disk image"
}
variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable "subnet_id" {
  description = "Subnet"
}
variable "service_account_key_file" {
  description = "key .json"
}
variable "private_key_path" {
  # Описание переменной
  description = "Path to the private key used for ssh access"
}
variable "access_key" {
  description = "access key for backend"
}
variable "secret_key" {
  description = "secret key for backend"
}
variable "bucket_name" {
  description = "bucket_name"
}
