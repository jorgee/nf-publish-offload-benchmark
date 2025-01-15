params.outdir = 'publishDir'
params.num_files = 100
params.file_mb = 100

process gen_data {
	publishDir "${params.outdir}", mode: 'copy'
        cpus 2
	input:
	val(x)
        output:
        path 'chunk_*'

    	script:
	"""
	for i in {1..${params.num_files}}
	do
   	    dd if=/dev/urandom of=chunk_${x}_\$i count=${params.file_mb} bs=1M
        done
	"""
}

workflow {
	Channel.of(1) | gen_data
}
