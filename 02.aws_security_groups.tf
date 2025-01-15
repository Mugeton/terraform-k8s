resource "aws_security_group" "instance" {
  vpc_id = aws_vpc.main.id

  ingress {
    from_port   = 22                    # SSH 포트
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]         # 누구나 접속 가능 (보안에 유의)
  }

  egress {
    from_port   = 0        # 0은 전체 차단, -1은 전체 허용
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg_ssh"
  }
}