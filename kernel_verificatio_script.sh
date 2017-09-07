echo " Please enter kernel version for comparison i.e"
echo "2.6.32-573.el6.x86_64" 
read expected
received=$(uname -r)

exp_ver=${expected//\.el6.*/}
re_ver=${received//\.el6.*/}

echo $exp_ver
echo $ew_ver
if [ ${#re_ver} -lt ${#received} -a "$re_ver" '>' "$ex_ver" ]
then
    echo "Installed Version is higher than Expected."
    echo "Passed."
else
    echo "== FAILED == Received output is not as expected."
fi
