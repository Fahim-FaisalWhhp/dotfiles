Vim�UnDo� %lu�e+H�<�;��q7Ѫe��$~�'"��?@           max_per_desktop=2                             ar�g    _�                             ����                                                                                                                                                                                                                                                                                                                                                 v        aĭ     �                  #!/bin/bash -       	eval "$4"       =if [[ -n $manage && $state != @(floating|fullscreen) ]]; then       max_per_desktop=2       if [[ -n $node ]]   7        then target_desktop=$(bspc query -D -n "$node")       elif [[ -n $desktop ]]   $        then target_desktop=$desktop       elif [[ -n $monitor ]]   B        then target_desktop=$(bspc query -D -d "$monitor:focused")   /        else target_desktop=$(bspc query -D -d)       fi   
    for ((   "        d = target_desktop, i = 1;   (        d && (d != target_desktop || i);   /        d = $(bspc query -D "$d" -d next.local)   
    )); do           (( i = 0 ))   X        mapfile -t < <(bspc query -N -d "$d" -n '.!hidden.!floating.!fullscreen.window')   7        if (( ${#MAPFILE[@]} < max_per_desktop )); then   8            if bspc query -D -d "$d.focused" > /dev/null   (                then target_node=focused   T                else target_node=${MAPFILE[@]: -1} target_node=${target_node:-@$d:/}               fi   $            echo "node=$target_node"               break   
        fi       done   fi5��                                  �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v        ai̇    �                   �               5��                                          �      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        ai̔    �                            # echo follow=on5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             aj��     �                    max_per_desktop=25��                        l                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             aj��     �                    max_per_desktop=15��                        l                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             aj��    �                    max_per_desktop=25��                        l                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ar~�    �                    max_per_desktop=35��                        l                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ar�f    �                    max_per_desktop=25��                        l                     5��