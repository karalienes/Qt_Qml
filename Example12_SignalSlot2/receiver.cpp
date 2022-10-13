#include "receiver.h"

Receiver::Receiver(QObject *parent)
    : QObject{parent}
{

}

void Receiver::receiveSomething(QString s)
{
    qDebug()<<"denemedir";
}
