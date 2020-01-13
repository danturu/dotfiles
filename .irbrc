require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:USE_READLINE] = true
IRB.conf[:SAVE_HISTORY] = 2000
IRB.conf[:HISTORY_FILE] = '~/.irb-history'
