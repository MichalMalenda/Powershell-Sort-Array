Function Sort-Array{
    param(
        #[Parameter(Mandatory=$true)]
        #[string]$Algorithm,
        [Parameter(Mandatory=$true)]
        [array]$Array
    )
    Write-Output "IN - $Array"
    for($i=0;$i -lt $Array.Count; $i++){
        for($j=0;$j -lt $Array.Count-$i-1; $j++){
            if($Array[$j] -gt $Array[$j+1]){
                $swap=$Array[$j]
                $Array[$j]=$Array[$j+1]
                $Array[$j+1]=$swap
                Write-Output "Step $i - $Array"
            }
        }
    }
    Write-Output "OUT - $Array"
}