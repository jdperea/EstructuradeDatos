Proceso Burbuja
	Definir lista,lon,l,i,n,temp Como Entero;
	Dimension lista[6];
	lista[0]=5;
	lista[1]=2;
	lista[2]=4;
	lista[3]=1;
	lista[4]=3;
	//Longitud de la lista
	lon=5;
	l=lon;
	
	mostrarLista(lista,lon);
    Hacer
		n=0;
		//Recorrer la lista
		Para i=1 Hasta l Con Paso 1 Hacer
			//Verificar si los dos valores estan ordenados
			Escribir "Se compara ",lista[i-1]," > ",lista[i];
			Si lista[i-1]>lista[i]
				//Ordenar si es necesario
				temp=lista[i-1];
				lista[i-1]=lista[i];
				lista[i]=temp;
				n=i;
				mostrarLista(lista,lon);
			FinSi
			
		FinPara
		Escribir "l:",l,"-n:",n;
		l=n;
	Hasta Que n=0;
FinProceso

//Función para mostrar estado de la lista
SubProceso mostrarLista(lista,lon)
	Definir i Como Entero;
	Para i=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir Sin Saltar lista[i] " ";
	FinPara
	Escribir "";
FinSubProceso
