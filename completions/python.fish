function __fish_python_available_modules
  set cmd (commandline -op)

  set q $cmd[2]
  python -c "import pkgutil; print '\n'.join([m[1] for m in pkgutil.iter_modules() if m[1].startswith('$q')])"
end

complete --no-files -c pycd -a "(__fish_python_available_modules)"
complete --no-files -c pyversion -a "(__fish_python_available_modules)"
