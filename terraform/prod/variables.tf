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
variable "service_account_key_file" {
  description = "key .json"
}
variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable "image_id" {
  description = "Disk image"
}
variable "subnet_id" {
  description = "Subnet"
}

variable "app_count" {
  description = "Количество машин, на которых разворачивается приложение"
  default     = 1
}
variable "private_key_path" {
  # Описание переменной
  description = "Path to the private key used for ssh access"
}
variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "fd8tg2j9rlh3hacsviai"
}
variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "fd8432o1tb1q7ua2ruvt"
}
variable "access_key" {
  description = "access key for backend"
}
variable "secret_key" {
  description = "secret key for backend"
}
