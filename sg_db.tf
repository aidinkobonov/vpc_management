resource "aws_security_group " "allow_mysql" {
    name        =   "allow_mysql"
    description =   "Allow MYSQL inbound traffic"
    vpc_id      =   "${aws_vpc.dev.id}"

    ingress {
        #TLS (change to whatever ports you need)
        from_port = 3306
        to_port   = 3306
        protocol  = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}
