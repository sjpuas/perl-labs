#!/usr/bin/perl
# -*- coding: UTF-8 -*-

use strict;
use warnings;
use feature qw(switch);

my $file;

sub menu(){
    my $opt;
    print "====== Menu Aplicativo ======== \n";
    print " 1. Listar Asignaturas \n"; 
    print " 2. Agregar Asignatura \n";
    print " 3. Salir \n";
    print " Ingrese una opcion \n";
    $opt = <STDIN>;
    return $opt;  
}

sub submenu(){
    my $opt;
    print "====== SubMenu Asignaturas ======== \n";
    print " 1. Listar Notas \n"; 
    print " 2. Promedio Notas \n"; 
    print " 3. Agregar Nota \n";
    print " 4. Volver \n";
    print " Ingrese una opcion \n";
    $opt = <STDIN>;
    return $opt;    
}

sub loadFile(){
           
}



sub main{
   my $o;
   print "\n";
   loadFile(); 
   do {   
	    $o = menu();
            given($o) {		
		when(1)		{ 
                                  my $o2; 
                                  do{   
					  $o2 = submenu();
	 	                          given($o2){
		                            when(1)		{ print "opcion 1\n" }
		                            when(2)		{ print "opcion 2\n" }   
					    when(3)		{ print "opcion 3\n" }
					    when(4)		{ print "opcion 4\n" }
					    default		{ print "Opcion no valida\n" }			
					  }
				   print "\n";	   
				 } while ($o2 != 4)
				}
		when(2)		{ print "opcion 2\n" }		 
		when(3)		{ print "Saliendo del aplicativo\n"; exit 0; }
		default		{ print "Opcion no valida\n" }	     
  	}
    print "\n";	
  } while ($o != 3)    
}   

main();



