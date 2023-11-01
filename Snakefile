# Inputs to process
CONDITIONS = glob_wildcards("reads/{condition}_1_1.fq").condition
print("Conditions are: ", CONDITIONS)

REPLICATES = ["1", "2", "3"]
READ = ["1", "2"]

rule all_counts:
  input: 
    untrimmed = expand("reads.{cond}_{rep}_{read}.fq.count", cond=CONDITIONS, rep=REPLICATES, read=READ),
    trimmed = expand("trimmed.{cond}_{rep}_{read}.fq.count", cond=CONDITIONS, rep=REPLICATES, read=READ)
  output: 
    untrimmed = "all_untrimmed_counts.txt",
    trimmed = "all_trimmed_counts.txt"
  shell:
    "cat {input.untrimmed} > {output.untrimmed} ; cat {input.trimmed} > {output.trimmed}"

# count number of reads
rule countreads:
  output: "{indir}.{myfile}.fq.count"
  input: "{indir}/{myfile}.fq"
  shell:
    "echo $(( $(wc -l <{input}) / 4 )) > {output}"

# trim reads
rule trimreads:
  output: "trimmed/{myfile}.fq"
  input: "reads/{myfile}.fq"
  shell:
    "fastq_quality_trimmer -t 20 -l 100 -o {output} < {input}"

# align reads
rule kallisto_quant:
  output:
    directory("kallisto.{sample}")
  input:
    idx = "transcriptome/Saccharomyces_cerevisiae.R64-1-1.kallisto_index",
    fq1 = "trimmed/{sample}_1.fq",
    fq2 = "trimmed/{sample}_2.fq"
  shell:
    """
      kallisto quant -i {input.idx} \
        -o {output} {input.fq1} {input.fq2}
    """

# kallisto index
rule kallisto_index:
  output:
    idx = "transcriptome/{strain}.kallisto_index",
    log = "transcriptome/{strain}.kallisto_log"
  input: "transcriptome/{strain}.cdna.all.fa.gz"
  shell:
    "kallisto index -i {output.idx} {input} >& {output.log}"

rule fastqc:
  output:
    html = "{indir}.{myfile}_fastqc.html",
    zip  = "{indir}.{myfile}_fastqc.zip"
  input:
    "{indir}/{myfile}.fq"
  shell:
    """
      fastqc -o . {input}
      mv {wildcards.myfile}_fastqc.html {output.html}
      mv {wildcards.myfile}_fastqc.zip  {output.zip}
    """
