DALIADIR=../nsm-dalia-0.9
OUTDIR=`pwd`
cd $DALIADIR
mkdir -p $OUTDIR
/c/Program\ Files/swipl/bin/swipl.exe > $OUTDIR/parselog.txt<<EOF
[dalia_cline].
l(eng).
pf("../john/EnglishNSM.txt").
halt.
EOF
grep noparse $OUTDIR/parselog.txt > $OUTDIR/noparse.txt
cd $OUTDIR
git diff -w .
