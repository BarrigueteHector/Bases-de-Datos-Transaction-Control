-- ************ COMMIT ************

        -- Solo se debe escribir la instrucción:
    COMMIT;

-- ************ SAVEPOINT ************

    -- Estos deben de ser nombrados:
    SAVEPOINT <NAME>;
        -- NAME es el nombre del SAVEPOINT

-- ************ ROLLBACK ************

    -- Se puede aplicar de dos formas:
    -- 1. Indicando el punto al que queremos ir:
    ROLLBACK TO <NAME_SAVEPOINT>;
        -- NAME_SAVEPOINT es el nombre del SAVEPOINT

    -- 2. Ir hasta el ultimo COMMIT realizado:
    ROLLBACK;

    -- De esta forma, regresará hasta el ultimo COMMIT realizado (ignorando todos los SAVEPOINT) o hasta antes de realizar el ultimo CREATE.