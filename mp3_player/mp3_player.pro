#-------------------------------------------------
#
# Project created by QtCreator 2019-12-16T18:05:53
#
#-------------------------------------------------

QT       += core gui
QT += multimedia
QT += charts

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = mp3_player
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++14

SOURCES += \
        src/main.cpp \
        src/mainwindow.cpp \
    src/fastfourier.cpp \
    src/visualisation.cpp \
    src/signalpower.cpp

HEADERS += \
        headers/mainwindow.h \
    headers/fastfourier.h \
    headers/visualisation.h \
    headers/constants.h \
    headers/signalpower.h

FORMS += \
        forms/mainwindow.ui \
    forms/visualisation.ui

LIBS += /usr/local/lib/libfftw3.a

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
