set table "presentation.fit.table"; set format "%.5f"
set format "%.7e";; f(x) = a*x**(-b); a = 4.388e-6; b = 3.499; fit f(x) 'data.dat' using 1:2 via a,b; plot [x=0.0325:0.07] f(x); set print "fit-parameters.dat"; print a/10**floor(log10(a)),floor(log10(a)), b; 
