source ./zshrc
for file in install-scripts/*.sh; do
    echo "./$file"
    ./$file
done

