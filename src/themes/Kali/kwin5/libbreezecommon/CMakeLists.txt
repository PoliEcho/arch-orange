################# dependencies #################
### Qt/KDE
find_package(Qt5 REQUIRED CONFIG COMPONENTS Widgets)

################# breezestyle target #################
set(breezecommon_LIB_SRCS
    breezeboxshadowrenderer.cpp
)

add_library(kali-breezecommon5 ${breezecommon_LIB_SRCS})

generate_export_header(kali-breezecommon5
    BASE_NAME breezecommon
    EXPORT_FILE_NAME breezecommon_export.h)

target_link_libraries(kali-breezecommon5
    PUBLIC
        Qt5::Core
        Qt5::Gui)
