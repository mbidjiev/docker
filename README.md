# docker

docker build testdocker . > test.log #для создания образа и лога сборки
docker save testdocker | gzip testdocker.tar.gz #для создания архива

Собирается фреймворк yarp
При запуске контейнера запускается команда yarp read /portread 
Чтобы посылать команды терминалу необходимо пройти по ip-адресу, указаному в терминале при запуске команды
