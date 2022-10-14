terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

provider "yandex" {
  token     = "y0_AgAAAAACi4cgAATuwQAAAADPj_rluMrQKE89QBm4fwoyg9HwJI1L7DE"
  cloud_id  = "b1g1tp1j8r210ptjklqk"
  folder_id = "b1guun0oobhpr809u2uu"
  zone      = "ru-central1-a"
}

resource "yandex_compute_instance" "app" {
  name = "reddit-app-terraform"

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd8s9t4bg89s2rhqjlfl"
    }
  }

  network_interface {
    subnet_id = "e9bqp2134effflfg7i7t"
    nat       = true
  }
  metadata = {
  ssh-keys = "ubuntu:${file("C:/cygwin64/home/home/.ssh/appuser.pub")}"
  }

  connection {
  type = "ssh"
  host = yandex_compute_instance.app.network_interface.0.nat_ip_address
  user = "ubuntu"
  agent = false
  private_key = file("C:/cygwin64/home/home/.ssh/appuser")
  }


  provisioner "file" {
  source = "files/puma.service"
  destination = "/tmp/puma.service"
  }

  provisioner "remote-exec" {
  script = "files/deploy.sh"
  }
}
