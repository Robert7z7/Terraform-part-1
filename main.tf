resource "google_storage_bucket" "static-site" {
  name                        = var.bucket_name
  location                    = var.bucket_location
  force_destroy               = var.force_destroy
  uniform_buket_level_aeccses = var.uniform_buket_level_aeccses

}

resource "google_compute_instance" "default" {
  name         = var.vm_name
  machine_type = var.vm_tupe
  boot_disk {
    initialize_params {
      image = var.boot_image
    }
  }

  network_interface {
    network = var.network
    access_config {
    }
  }
  metadata_startup_script = var.ms_script
}
output "external_ip" {
  value = "google_compute_instance.default.network_interface.0.access_config.0.nat_ip"
}
output "url" {
  value = join("", google_storage_bucket.static-site.*.url)
}
