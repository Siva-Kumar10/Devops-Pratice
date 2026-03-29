for i in {1..20}; do touch file$i.txt; done && for i in {1..5}; do mv file$i.txt file$i.yml; done
