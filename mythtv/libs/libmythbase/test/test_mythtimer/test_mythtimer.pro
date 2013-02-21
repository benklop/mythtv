include ( ../../../../settings.pro )

CONFIG += qtestlib
TEMPLATE = app
TARGET = test_mythtimer
DEPENDPATH += . ../..
INCLUDEPATH += . ../..

eval(QMAKE_CXX = g++) {
  QMAKE_CXXFLAGS += -O0 -fprofile-arcs -ftest-coverage 
  QMAKE_LFLAGS += -fprofile-arcs 
}

# Input
HEADERS += test_mythtimer.h
SOURCES += test_mythtimer.cpp

HEADERS += mythtimer.h
SOURCES += mythtimer.cpp

QMAKE_CLEAN += $(TARGET) $(TARGETA) $(TARGETD) $(TARGET0) $(TARGET1) $(TARGET2)
QMAKE_CLEAN += ; rm -f *.gcov *.gcda *.gcno