# vim: filetype=muttrc

set folder = "~/.mails/t.leclercq@evs.com"
set spoolfile = "+/inbox"
set postponed = "+/drafts"
set trash = "+/trash"
set record = "+/sent"

set sendmail="/usr/bin/msmtp -a tleclercq-evs"
set from = "t.leclercq@evs.com"
set realname = "Thomas LECLERCQ"

mailboxes ="inbox" ="Sent" ="Archive" ="Draft" ="git" ="confluence" ="invites"
