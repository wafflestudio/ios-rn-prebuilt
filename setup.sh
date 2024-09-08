set -e
ruby --version
export NO_FLIPPER=1
root=$(pwd)
rm -rf ./react-native
mkdir -p ./react-native
cd ./react-native
npx react-native init ReactNativeKit --version 0.72.3
cd ./ReactNativeKit
npm install \
    @react-navigation/native@6.1.7 \
    react-native-screens@3.23.0 \
    react-native-safe-area-context@4.7.1 \
    @react-navigation/native-stack@6.9.13 \
    react-native-gesture-handler@2.12.0 \
    react-native-reanimated@3.4.2 \
    @react-navigation/drawer@6.6.3 \
    @react-native-picker/picker@2.5.0 \
    react-native-svg@13.11.0 \
    @react-native-async-storage/async-storage@1.19.8 --save-exact

cd $root
rm -rf ./react-native/ReactNativeKit/ios/*
cp -r ./ReactNativeKit/* ./react-native/ReactNativeKit/ios/

cd ./react-native/ReactNativeKit/ios
pod install
./build.sh
xed .
