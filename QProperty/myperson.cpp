#include "myperson.h"

MyPerson::MyPerson(QObject *parent)
    : QObject{parent}
{

}

MyPerson::MyPerson(const QString &name, int age, QObject *parent):
    QObject(parent)
{
    m_name = name;
    m_age = age;
}

QString MyPerson::name() const
{
    return this->m_name;
}

int MyPerson::age() const
{
    return this->m_age;
}

void MyPerson::set_name(const QString &name)
{
    if(m_name != name){
        m_name=name;
        emit name_changed();
    }
}

void MyPerson::set_age(int age)
{
    if(m_age != age){
        m_age = age;
        emit age_changed();
    }
}
