function pyversion
  if test (count $argv) -ne 1
    echo "Usage: pyversion <MODULE_NAME>"
  else
    set pkg $argv[1]
    python -c "import pkg_resources as pr;print('%s==%s' % ('$pkg', pr.get_distribution('$pkg').version))"
  end
end

