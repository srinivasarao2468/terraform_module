module "ecs_cluster" {
  source                                             = "../modules/ecs/"
  ecs_cluster_name                                   = "ecs_dev_cluster"
  ecs_service_name                                   = "ecs_dev_service"
  ecs_task_definition_name                           = "dev_service_task_defnations"
  container_definitions_of_task_definition_file_path = "${var.container_definitions_of_task_definition_file_path}"
}
