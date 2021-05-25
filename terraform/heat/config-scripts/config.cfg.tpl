#!/bin/bash
# generated terraform template file
# place here all variables
cat <<EOF >/home/debian/config.cfg
# configuration file for all shell scripts
%{ if ssh_authorized_keys != "" ~}
export ssh_authorized_keys='${ssh_authorized_keys}'
%{ endif ~}
%{ if no_proxy != "" ~}
export no_proxy="${no_proxy}"
%{ endif ~}
%{ if tinyproxy_upstream != "" ~}
export tinyproxy_upstream="%{ for l in tinyproxy_upstream ~}(${l}),%{~ endfor}"
%{ endif ~}
%{ if tinyproxy_proxy_authorization != "" ~}
export tinyproxy_proxy_authorization="${tinyproxy_proxy_authorization}"
%{ endif ~}
%{ if internal_http_proxy != "" ~}
export internal_http_proxy="${internal_http_proxy}"
%{ endif ~}
%{ if dns_nameservers != "" ~}
export dns_nameservers='${dns_nameservers}'
%{ endif ~}
%{ if dns_domainname != "" ~}
export dns_domainname='${dns_domainname}'
%{ endif ~}
%{ if nexus_server != "" ~}
export nexus_server="${nexus_server}"
%{ endif ~}
%{ if mirror_docker != "" ~}
export mirror_docker="${mirror_docker}"
%{ endif ~}
%{ if mirror_docker_key != "" ~}
export mirror_docker_key="${mirror_docker_key}"
%{ endif ~}
%{ if docker_version != "" ~}
export docker_version="${docker_version}"
%{ endif ~}
%{ if docker_compose_version != "" ~}
export docker_compose_version="${docker_compose_version}"
%{ endif ~}
%{ if gitlab_runner_version != "" ~}
export gitlab_runner_version="${gitlab_runner_version}"
%{ endif ~}
%{ if gitlab_url != "" ~}
export gitlab_url="${gitlab_url}"
%{ endif ~}
%{ if gitlab_auth_token != "" ~}
export gitlab_auth_token="${gitlab_auth_token}"
%{ endif ~}
%{ if gitlab_runner_tag != "" ~}
export gitlab_runner_tag="${gitlab_runner_tag}"
%{ endif ~}
%{ if docker_auth_config != "" ~}
export docker_auth_config="${docker_auth_config}"
%{ endif ~}
#
EOF
