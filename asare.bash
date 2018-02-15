function asare {
  asar e ./"$1"/Contents/Resources/app.asar ./"$1".out;
}

export -f asare
