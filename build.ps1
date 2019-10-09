cd dist
rm * -Force -Recurse

..\msyt.exe create -d ..\Msg_CNzh.product -o Msg_CNzh.product -p switch

sarc create Msg_CNzh.product Msg_CNzh.product.ssarc

rm Msg_CNzh.product -Force -Recurse
mkdir Bootup_CNzh\Message
mv Msg_CNzh.product.ssarc Bootup_CNzh\Message

sarc create Bootup_CNzh Bootup_CNzh.pack

rm Bootup_CNzh -Force -Recurse

cp ..\ResourceSizeTable.product.srsizetable .
rstbtool ResourceSizeTable.product.srsizetable set Message/Msg_CNzh.product.sarc 6123456

mkdir 01007EF00011E000\romfs\Pack
mkdir 01007EF00011E000\romfs\System\Resource
mv *.pack 01007EF00011E000\romfs\Pack
mv *.srsizetable 01007EF00011E000\romfs\System\Resource

pause
