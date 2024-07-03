process WRITE_FILE {
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