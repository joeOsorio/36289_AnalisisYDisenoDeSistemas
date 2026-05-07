import serial
import cv2

arduino = serial.Serial('COM3', 9600)
cap = cv2.VideoCapture(0)

def decidir(distancia, obstaculo, izquierda):
    if distancia < 10:
        return 'S'
    elif obstaculo:
        return 'R' if izquierda else 'L'
    else:
        return 'F'

while True:
    distancia = int(arduino.readline().decode().strip())

    ret, frame = cap.read()
    obstaculo = detectar_objeto(frame)  # función de visión
    izquierda = detectar_posicion(frame)

    comando = decidir(distancia, obstaculo, izquierda)
    arduino.write(comando.encode())