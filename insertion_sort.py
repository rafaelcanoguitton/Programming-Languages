##########################################################################
##### Insertion Sort - Tiempos de vinculación ############################
############### Binding Times ############################################
############### Autor: Rafael Cano #######################################
#### Insertion sort de: https://stackabuse.com/insertion-sort-in-python/##
##########################################################################

# Debido a que python es un lenguaje interpretado
# No tendremos tiempo de compilación
def insertion_sort(array):# Tiempo de diseño, se revisa sintaxis,  y semántica
                          # Tiempo de enlace, debido a que una función es declarada
    for index in range(1, len(array)): # Tiempo de diseño, se revisa sintaxis,  y semántica
                                       # Tiempo de implementación, se revisa si el tipo de dato es válido con la operación
                                       # Tiempo de enlace, debido a que se declara un scope
                                       # Tiempo de carga, debido a que se reserva memoria para el
                                       #    índice de la variable
                                       # Tiempo de ejecución, debido a que se ejecuta una función
        currentValue = array[index] # Tiempo de diseño, se revisa sintaxis,  y semántica
                                    # Tiempo de implementación, se revisa si el tipo de dato es válido con la operación
                                    # Tiempo de enlace, se carga la variable
                                    # Tiempo de carga se escoge una dirección donde se almacena nuestra variable
                                    # Tiempo de ejecución, obtendremos el valor en sí desde nuestro arreglo
        currentPosition = index # Tiempo de diseño, se revisa sintaxis, y semántica
                                # Tiempo de implementación, se revisa si el tipo de dato es válido con la operación
                                # Tiempo de enlace, se carga la variable
                                # Tiempo de ejecución, obtendremos el valor en sí desde el índice del for
        while currentPosition > 0 and array[currentPosition - 1] > currentValue: # Tiempo de diseño, se revisa sintaxis,  y semántica
                                                                                 # Tiempo de enlace, debido a que se declara un scope
                                                                                 # Tiempo de ejecución, debido a que se ejecuta una función
            array[currentPosition] = array[currentPosition -1] # Tiempo de diseño, se revisa sintaxis y semántica
                                                               # Tiempo de implementación, se revisa si el tipo de dato es válido con la operación
                                                               # Tiempo de ejecución, reemplazaamos un valor dentro del arreglo
            currentPosition = currentPosition - 1 # Tiempo de diseño, se revisa sintaxis y semántica
                                                  # Tiempo de implementación, se revisa si el tipo de dato es válido con la operación
                                                  # Tiempo de ejecución, se reasigna la variable con una operación.
        array[currentPosition] = currentValue # Tiempo de diseño, se revisa sintaxis y semántica
                                              # Tiempo de implementación, se revisa si el tipo de dato es válido con la operación
                                              # Tiempo de ejecución, se reasigna la variable con una operación.
print("¿Qué tipo de dato desea usar?") # Tiempo de diseño, se revisa sintaxis y semántica
                                       # Tiempo de implementación, se revisa si el tipo de dato es válido con la operación
                                       #                               además se hace un output a consola.
                                       # Tiempo de ejecución, debido a que se ejecuta una función
print("1. Entero")# Tiempo de diseño, se revisa sintaxis y semántica
                  # Tiempo de implementación, se revisa si el tipo de dato es válido con la operación
                  #                               además se hace un output a consola.
                  # Tiempo de ejecución, debido a que se ejecuta una función
print("2. Char")# Tiempo de diseño, se revisa sintaxis y semántica
                # Tiempo de implementación, se revisa si el tipo de dato es válido con la operación
                #                               además se hace un output a consola.
                # Tiempo de ejecución, debido a que se ejecuta una función
tipo=input()# Tiempo de diseño, se revisa sintaxis y semántica
            # Tiempo de implementación, se revisa si el tipo de dato es válido con la operación
            #                               además se recibe un input a través de teclado.
            # Tiempo de ejecución, debido a que se ejecuta una función
array=[] # Tiempo de diseño, se revisa sintaxis,  y semántica
         # Tiempo de implementación, se revisa si el tipo de dato es válido con la operación
         # Tiempo de enlace, se carga la variable
         # Tiempo de carga se escoge una dirección donde se almacena nuestra variable
         # Tiempo de ejecución, se asigna un arreglo vacío en nuestra variable
print("Ingrese 10"+"elementos.")# Tiempo de diseño, se revisa sintaxis y semántica
                                # Tiempo de implementación, se revisa si el tipo de dato es válido con la operación
                                #                               además se hace un output a consola.
                                # Tiempo de ejecución, debido a que se ejecuta una función
try: # Tiempo de diseño, se revisa sintaxis y semántica
     # Tiempo de enlace, debido a que se declara un scope
     # Tiempo de carga, se escoge una dirección para nuestro scope
    for _ in range(10): # Tiempo de diseño, se revisa sintaxis,  y semántica
                        # Tiempo de implementación, se revisa si el tipo de dato es válido con la operación
                        # Tiempo de enlace, debido a que se declara un scope
                        # Tiempo de carga, debido a que se reserva memoria para el
                        #    índice de la variable, a pesar de que no se usa.
                        # Tiempo de ejecución, debido a que se ejecuta una función
        if tipo=="1": # Tiempo de diseño, se revisa sintaxis y semántica
                      # Tiempo de implementación, se revisa si el tipo de dato en la comparación es válido
                      # Tiempo de enlace, debido a que se declara un scope
                      # Tiempo de carga, se escoge una dirección para nuestro scope
            array.append(int(input())) # Tiempo de diseño, se revisa sintaxis y semántica
                                       # Tiempo de implementación, se revisa si el tipo de dato es correcto
                                       # Tiempo de ejecución, se almacena en el arreglo nuestro valor ingresado
        else:
            array.append(input()) # Tiempo de diseño, se revisa sintaxis y semántica
                                  # Tiempo de implementación, se revisa si el tipo de dato es correcto
                                  # Tiempo de ejecución, se almacena en el arreglo nuestro valor ingresado
    insertion_sort(array) # Tiempo de diseño, se revisa sintaxis y semántica
                          # Tiempo de implementación, se revisa si el tipo de dato es válido con la operación
                          # Tiempo de ejecución, debido a que se ejecuta una función
    print("Su array ordenado: " + str(array)) # Tiempo de diseño, se revisa sintaxis y semántica
                                              # Tiempo de implementación, se revisa si el tipo de dato es válido con la operación
                                              #                               además se hace un output a consola.
                                              # Tiempo de ejecución, debido a que se ejecuta una función
except: # Tiempo de diseño, se revisa sintaxis y semántica
        # Tiempo de enlace, debido a que se declara un scope
        # Tiempo de carga, se escoge una dirección para nuestro scope
    print("Ingresó un valor inválido") # Tiempo de diseño, se revisa sintaxis y semántica
                                       # Tiempo de implementación, se revisa si el tipo de dato es válido con la operación
                                       #                               además se hace un output a consola.
                                       # Tiempo de ejecución, debido a que se ejecuta una función