QT -= gui

QT += network sql

CONFIG += c++11 console

SOURCES += \
    functions.cpp \
    main.cpp \
    tcpserver.cpp \

qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    functions.h \
    tcpserver.h \

TARGET = hallServer
