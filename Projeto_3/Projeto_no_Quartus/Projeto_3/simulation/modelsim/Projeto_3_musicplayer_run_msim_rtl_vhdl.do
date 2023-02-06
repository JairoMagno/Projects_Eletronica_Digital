transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/carlo/Desktop/Periodo_22.1/Eletronica_Digital/Projetos/Projeto_3/gera_pulso.vhd}

