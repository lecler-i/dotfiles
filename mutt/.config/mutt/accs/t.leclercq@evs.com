# vim: filetype=muttrc
unmailboxes *

set folder = "~/.mails/t.leclercq@evs.com/"
set spoolfile = "+/Inbox"
set postponed = "+/Drafts"
set trash = "+/Deleted Items"
set record = "+/Sent Items"

set sendmail="/usr/bin/msmtp -a tleclercq-evs"
set from = "t.leclercq@evs.com"
set realname = "Thomas LECLERCQ"

set crypt_use_gpgme=no
set crypt_replysign=no
set crypt_replysignencrypted=no
set crypt_autosign=no
set crypt_verify_sig=yes
set crypt_replysign=no
set crypt_replyencrypt=no
set pgp_default_key="0x8668630491A41722"

mailboxes ="Inbox" ="Archive" ="Deleted Items" ="git" ="confluence" ="invites" ="Sent Items"

macro index <f5> "!mbsync tleclercq-evs^M" "Update through mbsync"

alias evs Thomas LECLERCQ <t.leclercq@evs.com>

