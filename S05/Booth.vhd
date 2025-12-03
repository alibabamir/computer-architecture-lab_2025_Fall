LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_signed.ALL;

ENTITY booth_multiplier IS
    GENERIC (
        x : INTEGER := 4;
        y : INTEGER := 4
    );
    PORT (
        m      : IN  STD_LOGIC_VECTOR(x - 1 DOWNTO 0);
        r      : IN  STD_LOGIC_VECTOR(y - 1 DOWNTO 0);
        result : OUT STD_LOGIC_VECTOR(x + y - 1 DOWNTO 0)
    );
END booth_multiplier;

ARCHITECTURE behavior OF booth_multiplier IS
BEGIN
    PROCESS(m, r)
        VARIABLE a, s, p : STD_LOGIC_VECTOR(x + y + 1 DOWNTO 0);
    BEGIN
        a := (OTHERS => '0');
        s := (OTHERS => '0');
        p := (OTHERS => '0');

        a(x + y DOWNTO y + 1) := m;

        IF m(x - 1) = '1' THEN
            a(x + y + 1) := '1';
        ELSE
            a(x + y + 1) := '0';
        END IF;

        s := (NOT a) + 1;

        p(y DOWNTO 1) := r;

        FOR i IN 1 TO y LOOP
            IF (p(1 DOWNTO 0) = "01") THEN
                p := p + a;
            ELSIF (p(1 DOWNTO 0) = "10") THEN
                p := p + s;
            END IF;

            p(x + y + 1 DOWNTO 0) := p(x + y + 1) & p(x + y + 1 DOWNTO 1);
        END LOOP;

        result <= p(x + y DOWNTO 1);
    END PROCESS;
END behavior;