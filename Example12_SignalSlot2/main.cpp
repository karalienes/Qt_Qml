#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "receiver.h"


int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine *engine;
    engine = new QQmlApplicationEngine(qApp);
    QQmlContext * context = engine->rootContext();

    Receiver receiver;
    engine->load(QUrl(QStringLiteral("qrc:/main.qml")));

    engine->rootContext()->setContextProperty("receiver",&receiver);


    return app.exec();
}
