# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#

# -------------------------------------------------------------------
# Tools
# -------------------------------------------------------------------
alias xampp="sudo /Applications/XAMPP/xamppfiles/xampp"

# -------------------------------------------------------------------
# Edit Files
# -------------------------------------------------------------------
alias edit_hosts='st /etc/hosts'
alias edit_httpd='st /Applications/XAMPP/xamppfiles/etc/extra/httpd.conf'
alias edit_php='st /Applications/XAMPP/xamppfiles/etc/extra/php.ini'
alias edit_vhosts='st /Applications/XAMPP/xamppfiles/etc/extra/httpd-vhosts.conf'
alias edit_mamp_vhosts="st '/Library/Application Support/appsolute/MAMP PRO/conf/httpd.conf'"
alias edit_aliases="st /Users/jkeiser/.oh-my-zsh/custom/my_aliases.zsh"
# for path
alias edit_path='st ~/.zshrc'
alias edit_zsh='st ~/.zshrc'

# -------------------------------------------------------------------
# Open
# -------------------------------------------------------------------
alias open_errorlog="open -a Console /Applications/XAMPP/xamppfiles/logs/php_error_log"
alias open_mysql="/Applications/xampp/xamppfiles/bin/mysql -uroot -p"

# Open With
alias photoshop="open -a 'Adobe Photoshop CS6'"

# -------------------------------------------------------------------
# Directories
# -------------------------------------------------------------------
alias todo="cd /Applications/MAMP/htdocs/todo"
alias htdocs="cd /Applications/MAMP/htdocs"

# -------------------------------------------------------------------
# Extra
# -------------------------------------------------------------------
# To clear terminal
alias c='clear'

# -------------------------------------------------------------------
# Personal Goals
# -------------------------------------------------------------------
alias pg-open="stt /Applications/MAMP/htdocs/personal-goals"

# check off personal goals (open main README.md in vim)
# i.e. alias pg-ch="vim ~/Dev/personal-goals/README.md"
alias pg-check="vim /Applications/MAMP/htdocs/personal-goals/README.md"

# add to content list (opens content list folder in vim)
# usage example: pg-add blog-post
function pg-add() {
  if [ $# -eq 0 ]; then
      print "Oops. Please enter a content type! (i.e. pg-add video)"
    else
      vim /Applications/MAMP/htdocs/personal-goals/lists/"$@".md
  fi
}

function pg-review() {
  if [ $# -eq 0 ]; then
      print "Oops. Please enter a date! (i.e. pg-rev YYYY-MM-DD)"
    else
      cp /Applications/MAMP/htdocs/personal-goals/accomplishments/_template.md /Applications/MAMP/htdocs/personal-goals/accomplishments/"$@".md;
      vim /Applications/MAMP/htdocs/personal-goals/accomplishments/"$@".md
  fi
}

# push my changes to my github master branch and open the page
# The commit message will always be "push from terminal" since I'll probably just be adding more resources or checking things off when using this
alias pg-push="cd /Applications/MAMP/htdocs/personal-goals &&
  git checkout master &&
  git add -A &&
  git commit -m 'push from terminal' &&
  git push origin master &&
  open http://github.com/mongoosedoom/personal-goals"

alias pg-pull="cd /Applications/MAMP/htdocs/personal-goals && git pull"