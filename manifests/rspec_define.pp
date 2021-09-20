# @summary example define to recreate https://phabricator.wikimedia.org/T291374
define example::rspec_define (
  $fact_parameter = $facts['os']['distro']['codename']
) {
  file{'/tmp/T291374':
    ensure  => file,
    content => $fact_parameter
  }
}
