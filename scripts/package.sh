set -eu

target=".build/lambda/SwiftLambdaSample"
rm -rf "$target"
mkdir -p "$target"
cp ".build/release/SwiftLambdaSample" "$target/"
# add the target deps based on ldd
ldd ".build/release/SwiftLambdaSample" | grep swift | awk '{print $3}' | xargs cp -Lv -t "$target"
cd "$target"
ln -s SwiftLambdaSample bootstrap
zip --symlinks lambda.zip *
