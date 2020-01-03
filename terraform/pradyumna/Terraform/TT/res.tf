resource "null_resource" "local-exec1" {

  provisioner "local-exec" {

    command = "New-Item updated.txt"
    interpreter = ["PowerShell", "-Command"]

  }

}

resource "null_resource" "local-exec2" {

  provisioner "local-exec" {

    command = "New-Item testfile1.txt"
    interpreter = ["PowerShell", "-Command"]

  }

}

resource "null_resource" "local-exec3" {

  provisioner "local-exec" {

    command = <<EOT
               New-Item testfile2.txt
               Set-Content testfile2.txt 'Welcome to TutorialsPoint'
    EOT
    interpreter = ["PowerShell", "-Command"]

  }

}



