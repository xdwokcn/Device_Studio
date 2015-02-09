QT       += core gui xml sql widgets

TARGET = platform
TEMPLATE = lib

DESTDIR = ../../../temp/bin/Device_Studio.app/Contents/MacOS
DEFINES += PLATFORM_LIBRARY

LIBS += -L../../../temp/bin/Device_Studio.app/Contents/MacOS -lkernel

unix {
    target.path = ../../../temp/bin/Device_Studio.app/Contents/MacOS
    INSTALLS += target
}

UI_DIR=../../../temp/libs/platform/ui
MOC_DIR=../../../temp/libs/platform/moc
OBJECTS_DIR=../../../temp/libs/platform/obj
RCC_DIR=../../../temp/libs/platform/rcc

HEADERS += \
    platformlibglobal.h \
    stylehelper.h \
    qsettingmanager.h \
    qplatformcore.h \
    styledbar.h \
    minisplitter.h \
    manhattanstyle.h \
    qbaseitemdelegate.h \
    qbaselistview.h \
    propertylist/qpropertylistview.h \
    propertylist/qpropertyeditorpane.h \
    propertylist/qcommoneditor.h \
    qabstractpage.h \
    qabstractpagewidget.h \
    undocommand/qbaseundocommand.h \
    undocommand/qaddhostundocommand.h \
    qsoftcore.h \
    qsoftactionmap.h

SOURCES += \
    stylehelper.cpp \
    qsettingmanager.cpp \
    qplatformcore.cpp \
    styledbar.cpp \
    minisplitter.cpp \
    manhattanstyle.cpp \
    qbaseitemdelegate.cpp \
    qbaselistview.cpp \
    propertylist/qpropertylistview.cpp \
    propertylist/qpropertyeditorpane.cpp \
    propertylist/qcommoneditor.cpp \
    qabstractpage.cpp \
    qabstractpagewidget.cpp \
    undocommand/qbaseundocommand.cpp \
    undocommand/qaddhostundocommand.cpp \
    qsoftcore.cpp \
    qsoftactionmap.cpp

RESOURCES += \
    platform.qrc
