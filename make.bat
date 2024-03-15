if "%1" == "" (
    echo "Please input file number."
) else (
    cd homeworks
    xelatex %1
    xelatex %1 
    move /y ./%1.pdf ../pdf/%1.pdf
    del *.aux *.log *.out
    cd ../pdf
    code %1.pdf
    cd ..
)
