function pycd
  if test (count $argv) -ne 1
    echo "Usage: pycd <MODULE_NAME>"
  else
    set filename ''
    set module_path (python -c "import pkgutil;print pkgutil.get_loader('$argv[1]').filename")

    if test -f $module_path
        set filename (basename $module_path)
        set module_path (dirname $module_path)
    end

    if test -d $module_path
      if test -n $filename
        echo "Single file module, check $filename"
      end

      cd $module_path
    else
      echo "No such module: $argv[1]"
    end
  end
end
