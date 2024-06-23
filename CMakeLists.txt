cmake_minimum_required (VERSION 3.14)
project(BloodBound)

set (CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


find_package(Qt6 COMPONENTS Core Gui Widgets Network Concurrent Sql Qml Quick QuickControls2 REQUIRED)

set(SOURCE_FILES
  src/main.cpp
  src/mainWindow.cpp)

set(HEADER_FILES
  src/mainWindow.h
 src/ui_mainWindow.h)

 set (QML_FILES
  ui/qml/main.qml
  )

set(QRC_FILES
    ${CMAKE_CURRENT_SOURCE_DIR}/resources/qml.qrc
)

#qt_add_resources(RESOURCES
# FILES ${QML_FILES}
#)
set (QRC_FILES
  resources/qml.qrc)

set(QML_IMPORT_PATH ${Qt5_IMPORTS_DIR} CACHE PATH "QML import path")
set(QML_SOURCES_DIR ${CMAKE_CURRENT_SOURCE_DIR}/ui/qml CACHE PATH "QML sources directory")

add_executable(BloodBound ${SOURCE_FILES} ${HEADER_FILES} ${QML_FILES} ${QRC_FILES})

target_link_libraries(BloodBound 
    Qt6::Core 
    Qt6::Gui 
    Qt6::Widgets 
    Qt6::Network 
    Qt6::Concurrent 
    Qt6::Sql
    Qt6::Qml
    Qt6::Quick
    Qt6::QuickControls2
)


set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

