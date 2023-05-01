Function Sort-Array{
    param(
        [Parameter(Mandatory=$true)]
        [string]$Algorithm,
        [Parameter(Mandatory=$true)]
        [array]$Array
    )
    Write-Output "IN - $Array"
    switch($Algorithm){
        "BubbleSort" 
        {
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
        }
        "QuickSort" 
        {
            Quicksort($Array)
        }
    }
    Write-Output "OUT - $Array"
}
Function Quicksort($Array){
    if($Array.Count -gt 1){
        $pivot = $Array[0]
        for($x=1;$x -lt $Array.Count;$x++){
            if($Array[$x] -lt $pivot){
                $left = $Array[$x]
            }
        }
        for($x=1;$x -lt $Array.Count;$x++){
            if($Array[$x] -ge $pivot){
                $right = $Array[$x]
            }
        }
        return $left;$pivot;$right
    }else{
        return $left;$pivot;$right
    }
    Write-Output "$left $pivot $right"
    return (Quicksort $left) + $pivot + (Quicksort $right)
    #Write-Output "$left $pivot $right"
}



function QuickSort([int[]] $arr) {
    if ($arr.Length -le 1) {
        return $arr
    }
    $pivot = $arr[0]
    $less = $arr | Where-Object { $_ -lt $pivot }
    $greater = $arr | Where-Object { $_ -gt $pivot }
    #Write-Output "$less $pivot $greater"
    return (QuickSort $less) + $pivot + (QuickSort $greater)
}