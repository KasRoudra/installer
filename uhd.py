uhd= open("/data/data/com.termux/files/home/.zshrc", 'a')
uhd.write('''prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}''')
uhd.close()
print("Enter your name:\n")
name=input()
nwr= open("/data/data/com.termux/files/usr/etc/zshrc", 'a')
nwr.write("figlet "+name)
nwr.close()