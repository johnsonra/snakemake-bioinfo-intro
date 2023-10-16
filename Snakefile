# count number of lines
rule countlines:
  output: "ref1_1.fq.count"
  input: "reads/ref1_1.fq"
  shell:
    "echo $(( $(wc -l <reads/ref1_1.fq) / 4 )) > ref1_1.fq.count"


# count number of lines
rule countlines2:
  output: "etoh60_1_1.fq.count"
  input: "reads/etoh60_1_1.fq"
  shell:
    "echo $(( $(wc -l <reads/etoh60_1_1.fq) / 4 )) > etoh60_1_1.fq.count"
