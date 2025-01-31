# Zylbersztejn A, Verfürden M, Hardelid P, Gilbert R, Wijlaars L., 2024.

import sys, csv, re

codes = [{"code":"Q264","system":"icd10"},{"code":"Q220","system":"icd10"},{"code":"Q262","system":"icd10"},{"code":"Q256","system":"icd10"},{"code":"Q257","system":"icd10"},{"code":"Q222","system":"icd10"},{"code":"Q221","system":"icd10"},{"code":"Q243","system":"icd10"},{"code":"Q263","system":"icd10"},{"code":"Q223","system":"icd10"},{"code":"Q255","system":"icd10"},{"code":"Q257","system":"icd10"},{"code":"Q221","system":"icd10"},{"code":"Q255","system":"icd10"},{"code":"Q222","system":"icd10"},{"code":"Q256","system":"icd10"},{"code":"Q262","system":"icd10"},{"code":"Q220","system":"icd10"},{"code":"Q243","system":"icd10"},{"code":"Q263","system":"icd10"},{"code":"Q223","system":"icd10"},{"code":"Q264","system":"icd10"},{"code":"Q222","system":"icd10"},{"code":"Q223","system":"icd10"},{"code":"Q264","system":"icd10"},{"code":"Q220","system":"icd10"},{"code":"Q256","system":"icd10"},{"code":"Q262","system":"icd10"},{"code":"Q255","system":"icd10"},{"code":"Q221","system":"icd10"},{"code":"Q257","system":"icd10"},{"code":"Q243","system":"icd10"},{"code":"Q263","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('congenital-anomalies-in-children-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["aortopulmonary-congenital-anomalies-in-children---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["aortopulmonary-congenital-anomalies-in-children---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["aortopulmonary-congenital-anomalies-in-children---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
