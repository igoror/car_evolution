if [ "$#" -ne 1 ]; then
    echo "Usage: ./build_deps.sh PLATFORM"
    echo "PLATFORM is either linux or windows"
    exit 1
fi

mkdir deps
cd deps

#### premake5 ####
echo "--------- COMPILING: premake5 ----------"
git clone -b release-5.0-alpha12 https://github.com/premake/premake-core
cd premake-core
make -f Bootstrap.mak $1
cd ..


#### Box2D ####
echo "--------- COMPILING: Box2D ---------"
git clone https://github.com/erincatto/Box2D
cd premake-core
./build/bootstrap/premake_bootstrap --file=../Box2D/Box2D/premake5.lua gmake
cd ../Box2D/Box2D/Build/gmake/
make
cd ../../../..
