#!/bin/bash

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

NO_COLOR="\033[0m"
OK_COLOR="\033[32;01m"
ERROR_COLOR="\033[31;01m"
WARN_COLOR="\033[33;01m"

PACKER_VERSION="0.8.6"
PACKER_URI="https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip"

TERRAFORM_VERSION="0.6.6"
TERRAFORM_URI="https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip"

function install {
    app=$1
    uri=$2
    echo -e "${OK_COLOR}Install $app ${NO_COLOR}"
    wget $uri
}


if [ $# -eq 0 ]; then
    echo -e "${ERROR_COLOR}Usage: `basename $0` <directory>${NO_COLOR}"
    exit 0
fi

install "packer" ${PACKER_URI} $1
install "terraform" ${TERRAFORM_URI} $1
