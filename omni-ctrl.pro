TRIKCONTROL_BINDIR = ../trikRuntime/trikControl/bin/release
TRIKCONTROL_DIR = ../trikRuntime/trikControl

QT       += core
QT       += network
QT       -= gui

TARGET = omni-ctrl
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

INCLUDEPATH = \
        $$PWD \
        $$TRIKCONTROL_DIR/include \

LIBS += -L$$TRIKCONTROL_BINDIR -ltrikControl

!macx {
        QMAKE_LFLAGS += -Wl,-O1,-rpath,.
}

SOURCES += main.cpp \
    omnirobot.cpp

HEADERS += \
    omnirobot.h