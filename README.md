# nf-core/nextflow_course

# Pipeline de Análise de Sequenciamento

Este pipeline utiliza o Nextflow para executar a análise de qualidade dos dados de sequenciamento com o **FastQC** e gerar um relatório consolidado com o **MultiQC**. 

## Pré-requisitos

- [Nextflow](https://www.nextflow.io/) instalado.
- Docker (ou qualquer outro sistema de contêineres) configurado para rodar os processos.

## Estrutura

### 1. **FastQC**
- **Objetivo**: Avaliar a qualidade das leituras de sequenciamento (FASTQ).
- **Entrada**: Arquivos FASTQ.
- **Saída**: Relatórios gerados pelo FastQC (`sarscov2_1*`).

### 2. **MultiQC**
- **Objetivo**: Gerar um relatório consolidado a partir dos relatórios do FastQC.
- **Entrada**: Relatórios do FastQC.
- **Saída**: Um arquivo HTML contendo o relatório do MultiQC (`multiqc_report.html`).

### 3. **BLAST** (Comentado no código)
- **Objetivo**: (Comentado no momento) Realizar a busca de sequências no banco de dados.
- **Entrada**: Arquivo FASTA e banco de dados.
- **Saída**: Arquivo com os resultados do BLAST (`blast_results.txt`).

## Como Usar

1. **Clone o Repositório** ou baixe o código para o seu ambiente local.
2. **Execute o pipeline** utilizando o Nextflow:

```bash
nextflow run main.nf -with-docker
```

## Credits

nf-core/nextflow_course was originally written by Julio C. Silva.

We thank the following people for their extensive assistance in the development of this pipeline:

<!-- TODO nf-core: If applicable, make list of people who have also contributed -->

## Contributions and Support

If you would like to contribute to this pipeline, please see the [contributing guidelines](.github/CONTRIBUTING.md).

## Citations

<!-- TODO nf-core: Add citation for pipeline after first release. Uncomment lines below and update Zenodo doi and badge at the top of this file. -->
<!-- If you use nf-core/nextflow_course for your analysis, please cite it using the following doi: [10.5281/zenodo.XXXXXX](https://doi.org/10.5281/zenodo.XXXXXX) -->



This pipeline uses code and infrastructure developed and maintained by the [nf-core](https://nf-co.re) community, reused here under the [MIT license](https://github.com/nf-core/tools/blob/main/LICENSE).

> **The nf-core framework for community-curated bioinformatics pipelines.**
>
> Philip Ewels, Alexander Peltzer, Sven Fillinger, Harshil Patel, Johannes Alneberg, Andreas Wilm, Maxime Ulysse Garcia, Paolo Di Tommaso & Sven Nahnsen.
>
> _Nat Biotechnol._ 2020 Feb 13. doi: [10.1038/s41587-020-0439-x](https://dx.doi.org/10.1038/s41587-020-0439-x).
