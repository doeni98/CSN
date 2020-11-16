# CSN Labo 1 Denis Bourqui

###  Vues RTL et Technology de la synthèse du composant Bin-Lin 2 à 4 de la description par flot de données



### ![](/home/deni/github/csn/labo/lab1/Screenshot_2020-09-22_17-32-13.png)Description VHDL par flot de données du transcodeur Bin-Lin 3 à 8 en utilisant l’instruction when .. else (flot_don). 

```VHDL
architecture flot_don of bin_lin_3to8 is

begin

    lin_o(0) <= '1' when  true  else
                '0';
    lin_o(1) <= '1' when bin_i >= "001"  else
                '0';
    lin_o(2) <= '1' when  bin_i >= "010" else
                '0';
    lin_o(3) <= '1' when  bin_i >= "011" else
                '0';
    lin_o(4) <= '1' when  bin_i >= "100" else
                '0';
    lin_o(5) <= '1' when  bin_i >= "101" else
                '0';
    lin_o(6) <= '1' when  bin_i >= "110" else
                '0';
    lin_o(7) <= '1' when  bin_i = "111" else
                '0';

end flot_don;
```

### Log de Questasim de la simulation automatique de la description par flot de données du transcodeur Bin-Lin 3 à 8. 

![](/home/deni/github/csn/labo/lab1/Screenshot_2020-09-22_17-55-24.png)

### Vues RTL et Technology de la synthèse du transcodeur Bin-Lin 3 à 8 pour la description par flot de données. 

![](/home/deni/github/csn/labo/lab1/Screenshot_2020-09-23_11-22-48.png)

### Programmation de la carte avec Bin-Lin_3to8

![](/home/deni/github/csn/labo/lab1/Screenshot_2020-09-23_11-35-49.png)

