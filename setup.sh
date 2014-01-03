# Install many packages needed
yum -y upgrade
yum -y groupinstall "Development Tools"
yum -y install wget ncurses* openssl* libXt* glib* libjpeg* libpng* libxml* libxslt* libtiff* libXext* gnutls* gcc-objc* libobjc* libffi*

# Install FFI supportwget -c "ftp://sourceware.org/pub/libffi/libffi-3.0.13.tar.gz" && tar -zxvf libffi-3.0.13.tar.gz && cd libffi-3.0.13 && ./configure --prefix=/usr/include && make && make install && cd .. && rm -rvf libffi-3.0.13/ && cp -Rvf /usr/include/lib64/libffi* /usr/lib64/

# Install ICU supportwget -c "http://download.icu-project.org/files/icu4c/52rc/icu4c-52_rc2-src.tgz" && tar -zxvf icu4c-52_rc2-src.tgz && cd icu/source && ./configure --prefix=/usr/include && gmake && gmake install && cd ../.. && rm -rvf icu/

# Install GNUStep Startup
wget -c "ftp://ftp.gnustep.org/pub/gnustep/core/gnustep-startup-0.32.0.tar.gz" && tar -zxvf gnustep-startup-0.32.0.tar.gz && cd gnustep-startup-0.32.0 && ./InstallGNUstep && cd .. && rm -rvf gnustep-startup-0.32.0/

# Install GNUStep Make
wget -c "ftp://ftp.gnustep.org/pub/gnustep/core/gnustep-make-2.6.6.tar.gz" && tar -zxvf gnustep-make-2.6.6.tar.gz && cd gnustep-make-2.6.6 && ./configure && make && make install && cd .. && rm -rvf gnustep-make-2.6.6

# Install GNUStep Basewget -c "ftp://ftp.gnustep.org/pub/gnustep/core/gnustep-base-1.24.6.tar.gz" && tar -zxvf gnustep-base-1.24.6.tar.gz && cd gnustep-base-1.24.6 && ./configure --prefix=/usr/include && make && make install && cd .. && rm -rvf gnustep-base-1.24.6/ 

# Install GNUStep GUI
wget -c "ftp://ftp.gnustep.org/pub/gnustep/core/gnustep-gui-0.24.0.tar.gz" && tar -zxvf gnustep-gui-0.24.0.tar.gz && cd gnustep-gui-0.24.0 && ./configure && make && make install && cd .. && rm -rvf gnustep-gui-0.24.0/

# Install GNUStep Back
wget -c "ftp://ftp.gnustep.org/pub/gnustep/core/gnustep-back-0.24.0.tar.gz" && tar -zxvf gnustep-back-0.24.0.tar.gz && cd gnustep-back-0.24.0 && ./configure && make && make install && cd .. && rm -rvf gnustep-back-0.24.0/

# Install GNUStep Core Base
wget -c "ftp://ftp.gnustep.org/pub/gnustep/libs/gnustep-corebase-0.1.tar.gz" && tar -zxvf gnustep-corebase-0.1.tar.gz && cd gnustep-corebase-0.1 && ./configure && make && make install && cd .. && rm -rvf gnustep-corebase-0.1

# Setting global variable **

echo "export GNUSTEP_MAKEFILES=/usr/GNUstep/System/Library/Makefiles" >> /etc/profile

echo "Finish"

