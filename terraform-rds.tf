provider "aws"
{
region = "us-east-2"
}

resource "aws_db_instance" "oracle_terra"
{
  allocated_storage    = 4
  storage_type         = "gp2"
  engine               = "oracle-se"
  engine_version       = "12.1.0.2.v8"
  instance_class       = "db.t2.micro"
  storage_encrypted    =  false
  license_model        = "bring-your-own-license"
  identifier           = "oracle-terra-test"
  name                 = "oracle-terra"
  username             = "TEST"
  password             = "TEST1234"
}