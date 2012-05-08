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

# Set attributes for the git user
default['gitlab']['gitlab_user'] = "gitlab"
default['gitlab']['gitlab_group'] = "gitlab"
default['gitlab']['gitlab_home'] = "/home/gitlab"

# Set github URL for gitlab
default['gitlab']['repository_url'] = "git://github.com/gitlabhq/gitlabhq.git"

# Required packages for Gitlab
case node['platform']
when "ubuntu","debian","linuxmint"
  default['gitlab']['packages'] = %w[ curl wget checkinstall libxslt-dev libsqlite3-dev libcurl4-openssl-dev libssl-dev libmysql++-dev libicu-dev libc6-dev python-dev python-pip libyaml-dev ]
when "redhat","centos","amazon","scientific"
  default['gitlab']['packages'] = %w[ curl wget libxslt-devel sqlite-devel openssl-devel mysql++-devel libicu-devel glibc-devel python-devel python-pip libyaml-devel ]
end
