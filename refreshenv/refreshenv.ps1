#
# This powershell script refresh the PATH environment variable
# From https://stackoverflow.com/a/50758683/16895510
#

function refreshenv {
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") +
                ";" +
                [System.Environment]::GetEnvironmentVariable("Path", "User")
}
