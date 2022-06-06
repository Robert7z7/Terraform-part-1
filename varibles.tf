variable "project" {
  default = ""
}
variable "region" {
  default = ""
}
variable "zone" {
  default = ""
}
variable "credentials" {
  default = ""
}
variable "bucket_name" {
  default = "hillel-18-romanchuk-oleh"
}
variable "bucket_location" {
  default = "EU"
}
variable "force_destroy" {
  default = "true"
}
variable "uniform_buket_level_aeccses" {
  default = "true"
}
variable "network" {
  default = "default"
}
variable "vm_name" {
  default = "terraform-instance"
}
variable "vm_tupe" {
  default = "f1-micro"
}
variable "boot_image" {
  default = "debian-cloud/debian-9"
}
variable "ms_script" {
  default = "sudo apt -y update; sudo apt -y install nginx"
}
