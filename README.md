Репозиторий для автоматизированных тестов

# Структура папок 
соответсвует репозиторию ЦОД, к примеру <br>

`/API`<br>
`	/Dpc`<br>
`		/Cpa`<br>
`			/Stf.Cpa.WebApi`<br>
`		/Pci`<br>
`			/Stf.Pci.WebApi.Passenger`<br>
`			/Stf.Pci.WebApi.Contractor`<br>
`	/Stations`<br>
`/UI`<br>

# Сборка Dockerfile
`docker build -t gitlab.srvdev.ru:4567/ntsmm/autotests .`  
`docker push gitlab.srvdev.ru:4567/ntsmm/autotests`  
