#include "tcpserver.h"
#include <QCoreApplication>

int main(int argc, char *argv[]) {
  QCoreApplication a(argc, argv);

  TcpServer server;

  return a.exec();
}
