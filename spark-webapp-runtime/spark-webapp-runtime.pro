QT += core gui webenginewidgets svg concurrent dbus

greaterThan(QT_MAJOR_VERSION, 5): QT += widgets

TEMPLATE = app

DEFINES += QT_DEPRECATED_WARNINGS

CONFIG += c++11 link_pkgconfig
PKGCONFIG += dtkcore dtkgui dtkwidget

HEADERS += \
        mainwindow.h \
        globaldefine.h \
        httpd.h \
        httplib.h \
        widget.h \
        webengineview.h \
        webenginepage.h \
        application.h \
        webengineurlrequestinterceptor.h

SOURCES += \
        main.cpp \
        httpd.cpp \
        mainwindow.cpp \
        widget.cpp \
        webengineview.cpp \
        webenginepage.cpp \
        application.cpp \
        webengineurlrequestinterceptor.cpp

RESOURCES += \
          resources/resources.qrc

TRANSLATIONS += \
             translations/spark-webapp-runtime_zh_CN.ts

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/durapps/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

# Rules for deployment
qm.files += translations/*.qm
qm.path = /opt/durapps/$${TARGET}/share/$${TARGET}/translations

INSTALLS += qm
