process WRITE_FILE {

    container "quay.io/nf-core/ubuntu:20.04"
    publishDir       = [
            mode: 'copy',
            path: { "${params.outdir}" }
    ]

    input:
    val text

    output:
    path "output.txt", emit: output_txt

    script:
    """
    echo text > output.txt
    """
}

workflow  {
    WRITE_FILE("Dogs are awesome")    
}