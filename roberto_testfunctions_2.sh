for i in {1..10}
do
    for q in 2 4 6 8 10
    do
        for lb in 930 960 980
        do
            n=$(expr 240 / $q)
            python main_testfunction.py -p Schwefel5 -i 3 -q $q -n $n -nm True -lbb $lb
            python main_testfunction.py -p Schwefel5 -i 3 -q $q -n $n -lb $lb
            python main_testfunction.py -p Schwefel5 -i 3 -q $q -n $n -nm True -lb $lb
        done
    done
done

for i in {1..10}
do
    for q in 2 4 6 8 10
    do
        for lb in 1.5 2 2.2
        do
            python main_testfunction.py -p Ackley5 -i 3 -q $q -n $n -nm True -lbb $lb
            python main_testfunction.py -p Ackley5 -i 3 -q $q -n $n -lb $lb
            python main_testfunction.py -p Ackley5 -i 3 -q $q -n $n -nm True -lb $lb
        done
    done
done
