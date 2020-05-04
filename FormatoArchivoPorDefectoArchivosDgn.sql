-- Este guión configura Digi3D.NET para que el formato de archivo por defecto sea archivos DGN
UPDATE Ints SET Data=1 WHERE Value='Order' AND Key IN (SELECT id FROM Keys WHERE Path LIKE 'DigiNG\IO\%');
UPDATE Ints SET Data=0 WHERE Value='Order' AND Key=(SELECT id FROM Keys WHERE Path LIKE 'DigiNG\IO\Digi21.Io.Dgn');
