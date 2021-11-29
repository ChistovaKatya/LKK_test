Репозиторий для автоматизированных тестов

# Структура папок 
соответсвует репозиторию ЦОД, к примеру
`/API`
`	/Dpc`
`		/Cpa`
`			/Stf.Cpa.WebApi`
`		/Pci`
`			/Stf.Pci.WebApi.Passenger`
`			/Stf.Pci.WebApi.Contractor`
`	/Stations`
`/UI`

# Сборка Dockerfile
`docker build -t gitlab.srvdev.ru:4567/ntsmm/autotests .`  
`docker push gitlab.srvdev.ru:4567/ntsmm/autotests`  
