# @summary Install a static hook file
#
define kandra::hooks::file() {
  include zulip::hooks::base

  file { "/etc/zulip/hooks/${title}":
    ensure => file,
    mode   => '0755',
    owner  => 'zulip',
    group  => 'zulip',
    source => "puppet:///modules/kandra/hooks/${title}",
    tag    => ['hooks'],
  }
}
