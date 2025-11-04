objects = grade.o menu.o student.o utils.o main.o
mycode:$(objects)
	cc -o mycode $(objects)

$(objects):%o:%c
	cc -c $< -o $@

clean:
	rm -f mycode $(objects)

