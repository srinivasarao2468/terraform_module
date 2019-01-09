#provider region
variable "region" {
  default = "us-east-2"
}

# Name of ecs cluster variable
variable "ecs_cluster_name" {
  default = "ecs_cluster"
}

# Name of ecs service variable
variable "ecs_service_name" {
  default = "ecs_service"
}

#unique name of ecs task defination
variable "ecs_task_definition_name" {
  default = "service_task_defnations"
}

#container definitions of task definition file path
variable "container_definitions_of_task_definition_file_path" {
  default = "./task-definitions/service.json"
}

#Name of ecs task definition volume
variable "task_definition_volume_name" {
  default = "service-storage"
}

#path of task definition volume on host
variable "task_definition_volume_host_path" {
  default = "/ecs/service-storage"
}
