nextflow.enable.dsl=2

process FastQC {
    publishDir 'results/fastqc', mode: 'copy'
    input:
    path fastq

    output:
    path "sarscov2_1*"  // A saída será o conteúdo do diretório fastqc_reports

    script:
    """
    fastqc $fastq -o .
    """
}

process MultiQC {
    publishDir 'results/multiqc', mode: 'copy'
    
    input:
    path fastqc_reports

    output:
    path "multiqc_report.html"

    script:
    """
    multiqc $fastqc_reports -o .
    """
}


/*
process BLAST {
    input:
    path fasta
    path db

    output:
    path "blast_results.txt"

    script:
    """
    blastn -query $fasta -db $db -out blast_results.txt
    """
}
*/

workflow {
    reads = Channel.fromPath(params.reads)
    //fasta = Channel.fromPath(params.fasta)
    //db = Channel.fromPath(params.db)

    fastqc_results = FastQC(reads)
    multiqc_result = MultiQC(fastqc_results)
    //blast_result = BLAST(fasta, db)
}
