ruby --version
rm -rf ./react-native
mkdir -p ./react-native
cd ./react-native
npx react-native init ReactNativeKit
cd ./ReactNativeKit
npm install @react-navigation/native react-native-screens react-native-safe-area-context @react-navigation/native-stack react-native-gesture-handler

cd ../../../
rm -rf ./react-native/ReactNativeKit/ios/*
cp -r ./ReactNativeKit/* ./react-native/ReactNativeKit/ios/
cd ./react-native/ReactNativeKit/ios
pod install
./build.sh
