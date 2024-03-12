if "%1" == "" (
    echo "Please input file number."
) else (
    cd homeworks
    xelatex %1 -output-directory=../pdf
    cd ../pdf
    del *.aux *.log *.out
    cd ..
)
