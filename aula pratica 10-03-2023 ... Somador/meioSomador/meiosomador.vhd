entity meiosomador is 
port(
a,b :in bit;
sum, carry: out bit
);
end meiosomador;
architecture arch_meiosomador of meiosomador is 
begin 
sum <= a xor b;
carry <= a and b;
end arch_meiosomador;