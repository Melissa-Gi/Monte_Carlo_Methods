# HelloWorld program advanced makefilem edited
# Hussein Suleman
# 14 March 2021

JAVAC=/usr/bin/javac
JAVA=/usr/bin/java
.SUFFIXES: .java .class
SRCDIR=src/MonteCarloMini
BINDIR=bin

$(BINDIR)/%.class:$(SRCDIR)/%.java
	$(JAVAC) -d $(BINDIR)/ -cp $(BINDIR) $<

CLASSES=Search$Direction.class\SearchParallel$Direction.class\
	TerrainArea.class\Search.class\MonteCarloMinimization.class
	SearchParallel.class\MonteCarloMinimizationParallel.class 		
	 
CLASS_FILES=$(CLASSES:%.class=$(BINDIR)/%.class)

default: $(CLASS_FILES)

clean: 
	rm $(BINDIR)/MonteCarloMini/*.class

run-serial: $(CLASS_FILES)
	$(JAVA) -cp bin MonteCarloMini.MonteCarloMinimization 100 50 -30 60 -30 60 0.5

run: $(CLASS_FILES)
	$(JAVA) -cp bin MonteCarloMini.MonteCarloMinimizationParallel 100 50 -30 60 -30 60 0.5
	
