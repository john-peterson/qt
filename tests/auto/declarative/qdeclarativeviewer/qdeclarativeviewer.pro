load(qttest_p4)
contains(QT_CONFIG,declarative): QT += declarative gui
macx:CONFIG -= app_bundle

include(../../../../tools/qml/qml.pri)

SOURCES += tst_qdeclarativeviewer.cpp

include(../symbianlibs.pri)

wince*|symbian: {
    importFiles.files = data
    importFiles.path = .
    DEPLOYMENT += importFiles
    wince*: DEFINES += SRCDIR=\\\".\\\"
} else {
    DEFINES += SRCDIR=\\\"$$PWD\\\"
}

CONFIG += parallel_test
