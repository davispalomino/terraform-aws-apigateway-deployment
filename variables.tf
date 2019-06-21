variable "rest_api" {
  type = string
}
variable "stage_name" {
  type = string
  default = "application"
}
variable "description" {
  type = string
  default = "0.1.0"
}
variable "integration_response_other_id" {
  type = list
}
variable "integration_response_cors_id" {
  type = list
}