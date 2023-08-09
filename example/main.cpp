#include <QGuiApplication>
#include <QQmlApplicationEngine>

auto main(int argc, char *argv[]) -> int
{
    QGuiApplication const app(argc, argv);
    QGuiApplication::setApplicationName(QStringLiteral("QML IconFonts Example"));
    QGuiApplication::setOrganizationName(QStringLiteral("PhilInTheGaps"));
    QGuiApplication::setOrganizationDomain(QStringLiteral("philinthegaps.github.io"));

    QQmlApplicationEngine const engine("ExampleUi", "Main");

    return QGuiApplication::exec();
}
