#
# Cookbook Name:: users
# Attributes:: default
#
# Copyright 2013, Thomas Boerger
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default["users"]["sshkeys"] = {
  "tboerger@wodan.webhippie.de" => "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCc1nE4kCs9WXEEbotF+0Rivnr/9I0fc56QLZTqIr4Rsl3iZcvVDgYJmh6rPcl9xKBptNo/jK1EJF/bm2APf6wIU5Q7tNjeIw5IMJnBRBfPdQujXumb1LZMGnQvPT/gHdpVZvPkYlKkBocOJGPG99GZL0FlXXpc4eDYrgCMfCzRFG1SbQWcUdipbJJgELmbiOy7c5eHtb9i51x7g99pC91WnpInuN4pa0AFHwDQpBhS8RSLFEAfWNNs4T3SiYiUUq0lIHBoIoTM8fTTzhshXAlGWuwsZ9c9luEAw+n4QL8oD9a2ycWTJ3JCRK3CC/+J2MqCROSL4zpVA7+PFrloScMV",
  "tboerger@thor.webhippie.de" => "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDUuitFc7ybzeUVAqiolJczD2g0wARkfrOxlxUEvdfGP1M7DA6tvDnALmTD3q7TVqlbhIS7B64DAU9nZ6RhDHD83dOco/xOGm9BG/TRnoKzyNU7HoCRfZg2TZNE0SiOR6ckbJuWa63t+et0hesMa49/7+zN0FH1UKqQZYMNkKz0I4Lz5/L49SkwgM/+cxIZCt0oC7mf+OGpImqo1OCAQHC9pPy25R1nTvFbLNmcGw5uK5VqIBPpCzYmFcKh708b9U/G+w7gQa3HQg5hCsNXL3SIL5vMnLWE/k2Q3YVTj4CvX9Yi/caQCkfXeNlmhYyEh98kbx5SRH97mtr3Dvo5lUo3",
  "tboerger@freya.suse.de" => "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC1vlBRSgKE2LN6Tbp5pQ4qVVOXlqUnhI4fkEJLCGAGmsQGu5usxNvp9UJq0cGt6Sq1htoDmgIjEZwCE/np8/O7ZQPyHpwOWtUlS4WWiXKW0GYaeoYsuMabMLbuV1CpSZhb93zy7ZLIKUYpP7WHyZmivDaXnYkn2IOu3fvDtTQdXbwlCer96dIQjNE/KEH4/gUXetrLMYYg26gUnSDeHaxGrLQAfA9jNG1EbXiUkx8cFmZLEREHjwkBAHcwZDkqbLvZr+ExAKIVUcSzj1ep5sOrtSpbwxRtmDscviFPruJmsx/Jjl9fMhpZq8lIQb6aQ0qq09KGv1WP4YbLGRItvq9T",
  "tboerger@mimir.suse.de" => "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCjASyOuvhSdzOeJCC/9crxcuztTY/AeFV7v59wQrCwozS2hPBcy5UJ4li80ly79t2D/ppCsiGDQjxCpMUKq++canqCIRZ1d6/6ylQPZIQw0rCGRHXDIKlc99i3Fz94XD85ZtFdGe2TWq1T2EEgmCRM9dGWq+f5iloRxnoSrCTXpy8JshnO5kMyQovChKzLBKdHIxddBDlEHxvWI0UcvWNuA8J2nrrOfMdMVKdPa5xeveX2V5oW3YClku7b/W6jO1rdkZ0tyl1n+wbETGmWQC+V4HE5qxK0u+Zmyz/4J+82sKQC6uEWbC9dFRslq+84rd4LyCD2467ZmzzV6HcyWJhL"
}

default["users"]["castles"] = {
  "tboerger-base" => "tboerger/homeshick-base",
  "tboerger-linux" => "tboerger/homeshick-linux"
}

default["users"]["users"] = {}
default["users"]["data_bag"] = "users"
