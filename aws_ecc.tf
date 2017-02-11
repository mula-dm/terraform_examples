resource "aws_elasticache_cluster" "example_memcached" {
  provider             = "aws.ireland"
  cluster_id           = "example_memcached"
  engine               = "memcached"
  engine_version       = "1.4.24"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.memcached1.4"
  port                 = 11211
  subnet_group_name    = "default"
}
