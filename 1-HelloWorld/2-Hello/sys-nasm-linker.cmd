rem cmd
rem Gerar o Objeto para Windows64 a partir do código fonte
rem nasm -f win64 1.1-HelloWorld.asm
rem Linkeditar e gerar o Executavel a partir do Objeto (binario)
rem link /subsystem:console /ENTRY:_start /LARGEADDRESSAWARE:NO /out:hello.exe hello.obj
rem linkeditor padrao dos SO
ld -s -o Hello-World.exe 1.1-HelloWorld-w.obj
rem Observações gerais
rem O link.exe é uma ferramente a parte do Nasm (mas pode ser instalada conjuntamente)
rem No visual studio ela geralmente vem associada a ferramenteas de desenvolvimento C/C++ (frameworks)
rem /LARGEADDRESSAWARE:N devido à arquitetura do pc com memoria ddr4 foi necessario (mas ddr3 é dispensavel)
rem cmd

