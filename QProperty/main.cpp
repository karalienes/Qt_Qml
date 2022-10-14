#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickStyle>
#include  "myperson.h"


/* Styles
 * Material
 * Imagine
 * Universal
 * Fusion
 */

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QQuickStyle::setStyle("Fusion");
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QObjectList people;
    people.append(new MyPerson("Enes",24));
    people.append(new MyPerson("Dilek",24));
    people.append(new MyPerson("Hüseyin",28));

    engine.rootContext()->setContextProperty("people",QVariant::fromValue(people));

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
