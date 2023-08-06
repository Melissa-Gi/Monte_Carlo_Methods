# HelloWorld program advanced makefilem edited
# Hussein Suleman
# 14 March 2021

JAVAC=/usr/bin/javac
JAVA=/usr/bin/java
.SUFFIXES: .java .class
SRCDIR=src
BINDIR=bin

$(BINDIR)/%.class:$(SRCDIR)/%.java
	$(JAVAC) -d $(BINDIR)/ -cp $(BINDIR) $<

CLASSES=MonteCarloMinimization.class MonteCarloMinimizationParallel.class 		SearchParallel.class\ SearchParallel$Direction.class 
	TerrainArea.class Search.class \ Run.class
	Search$Direction.class 
	
CLASS_FILES=$(CLASSES:%.class=$(BINDIR)/%.class)

default: $(CLASS_FILES)

clean: 
	rm $(BINDIR)/*.class

run: $(CLASS_FILES)
	$(JAVA) -cp bin Run
