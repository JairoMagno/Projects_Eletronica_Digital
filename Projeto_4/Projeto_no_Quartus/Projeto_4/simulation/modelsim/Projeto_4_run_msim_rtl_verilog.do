transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/carlo/Desktop/Periodo_22.1/Eletronica_Digital/Projetos/Projeto_4 {C:/Users/carlo/Desktop/Periodo_22.1/Eletronica_Digital/Projetos/Projeto_4/DivisorClock.v}
vlog -vlog01compat -work work +incdir+C:/Users/carlo/Desktop/Periodo_22.1/Eletronica_Digital/Projetos/Projeto_4 {C:/Users/carlo/Desktop/Periodo_22.1/Eletronica_Digital/Projetos/Projeto_4/contador_sincrono.v}

