cmake_minimum_required(VERSION 3.0)

include(GenerateExportHeader)

find_package(ECM ${KF5_MIN_VERSION} REQUIRED NO_MODULE)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${ECM_MODULE_PATH}  ${CMAKE_SOURCE_DIR}/cmake)

include(KDEInstallDirs)
include(KDECMakeSettings)

find_package(KDecoration2 REQUIRED)

add_subdirectory(kdecoration)
