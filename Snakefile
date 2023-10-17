# count number of reads
rule countreads:
  output: "{myfile}.count"
  input: "reads/{myfile}"
  shell:
    "echo $(( $(wc -l <{input}) / 4 )) > {output}"

# trim reads
rule trimreads:
  output: "trimmed/{myfile}"
  input: "reads/{myfile}"
  shell:
    "fastq_quality_trimmer -t 20 -l 100 -o {output} < {input}"
