char command;

void setup()
{
    Serial.begin(9600);
}

void loop()
{
    long distancia = medirDistancia(); // función ultrasónico
    Serial.println(distancia);

    if (Serial.available())
    {
        command = Serial.read();
        switch (command)
        {
        case 'F':
            avanzar();
            break;
        case 'L':
            girarIzq();
            break;
        case 'R':
            girarDer();
            break;
        case 'S':
            detener();
            break;
        }
    }
}