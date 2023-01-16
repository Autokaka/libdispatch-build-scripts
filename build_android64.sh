rm -rf build-android
cmake . -B build-android -G Ninja \
        -DCMAKE_C_COMPILER=clang \
        -DCMAKE_CXX_COMPILER=clang++ \
        -DCMAKE_SYSTEM_NAME=Android \
        -DCMAKE_SYSTEM_VERSION=21 \
        -DCMAKE_ANDROID_NDK=$ANDROID_NDK \
        -DCMAKE_SYSTEM_PROCESSOR="aarch64" \
        -DBUILD_SHARED_LIBS=OFF
cd build-android
ninja
