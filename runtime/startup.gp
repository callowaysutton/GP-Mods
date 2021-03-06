// This eGP file is run after the eGP library has been loaded.
// By default, it just prints a welcome message and a few lines
// of help, then runs "startScripting", which starts up the GUI.
// However, you can replace that code with eGP commands to start
// up your own application.

print
print 'Welcome to eGP!'
print
print 'This the eGP terminal window, used for bootstrapping GP. The eGP user'
print 'interface (UI) runs in its own window, but if the UI loop encounters'
print 'an error it cannot handle, it stops and this window takes over.'
print
print 'You can type ctrl-C in this terminal window to manually halt the UI.'
print
print 'When the UI is stopped, you can run commands in this terminal window, such as:'
print '  exit - quit GP'
print '  help - print a list of primitive operations built into eGP'
print '  print (3 + 4) - print the result of an expression'
print '  inspect (list 1 2 3) - inspect an object'
print '  go - restart the user interface'

to startup {
  go
}
