provider "aws" {
  region = "${var.region}"
}

#ecs cluster creation
resource "aws_ecs_cluster" "ecs_cluster" {
  name = "${var.ecs_cluster_name}"
}

#ecs service creation
resource "aws_ecs_service" "ecs_service" {
  name            = "${var.ecs_service_name}"
  cluster         = "${aws_ecs_cluster.ecs_cluster.id}"
  task_definition = "${aws_ecs_task_definition.service_task_defnations.arn}"
  desired_count   = 2
}

# ecs task defination creation
resource "aws_ecs_task_definition" "service_task_defnations" {
  family = "${var.ecs_task_definition_name}"

  #container_definitions = "${file("./task-definitions/service.json")}"

  container_definitions = "${file("${path.module}/task-definitions/${var.container_definitions_of_task_definition_file_path}")}"
  volume {
    name      = "${var.task_definition_volume_name}"
    host_path = "${var.task_definition_volume_host_path}"
  }
}
