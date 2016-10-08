
rep=`perl -e "use Getopt::Long::Subcommand"`
echo $rep
if [ -z $rep];
then
    ./cpanm Getopt::Long::Subcommand
fi


