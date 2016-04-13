apt-get -qqy update
apt-get -qqy install postgresql python-psycopg2
apt-get -qqy install python-pip
su postgres -c 'createuser -dRS vagrant'
su vagrant -c 'createdb'

vagrantTip="[35m[1mThe tournament app is located at /vagrant\nTo access the tournament files: cd /vagrant(B[m"
echo -e $vagrantTip > /etc/motd

