#questo è un makefile per file sorgenti C.

#creo delle variabili:
CC= gcc		#variabile che contiene il tipo di compilatore
EXEC = aoo	#nome dell'eseguibile
OBJ = main.o    #nome del file oggetto, pup contenere piu di un file


all: $(EXEC) $(OBJ) run info

$(EXEC): $(OBJ)
	@echo "creazione del file eseguibile"
	$(CC) main.o -o $(EXEC)

main.o: main.c
	@echo "creazione file oggetto"
	gcc -c main.c

run:
	@echo "esecuzione:"
	./$(EXEC)
info:
	@echo "esecuzione eseguita con successo".

