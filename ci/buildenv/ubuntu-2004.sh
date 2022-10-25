# THIS FILE WAS AUTO-GENERATED
#
#  $ lcitool manifest ci/manifest.yml
#
# https://gitlab.com/libvirt/libvirt-ci

function install_buildenv() {
    export DEBIAN_FRONTEND=noninteractive
    apt-get update
    apt-get dist-upgrade -y
    apt-get install --no-install-recommends -y \
            augeas-lenses \
            augeas-tools \
            bash-completion \
            ca-certificates \
            ccache \
            clang \
            codespell \
            cpp \
            diffutils \
            dwarves \
            ebtables \
            flake8 \
            gcc \
            gettext \
            git \
            grep \
            iproute2 \
            iptables \
            kmod \
            libacl1-dev \
            libapparmor-dev \
            libattr1-dev \
            libaudit-dev \
            libblkid-dev \
            libc-dev-bin \
            libc6-dev \
            libcap-ng-dev \
            libcurl4-gnutls-dev \
            libdevmapper-dev \
            libfuse-dev \
            libglib2.0-dev \
            libglusterfs-dev \
            libgnutls28-dev \
            libiscsi-dev \
            libnetcf-dev \
            libnl-3-dev \
            libnl-route-3-dev \
            libnuma-dev \
            libopenwsman-dev \
            libparted-dev \
            libpcap0.8-dev \
            libpciaccess-dev \
            librbd-dev \
            libreadline-dev \
            libsanlock-dev \
            libsasl2-dev \
            libselinux1-dev \
            libssh-dev \
            libssh2-1-dev \
            libtirpc-dev \
            libudev-dev \
            libxen-dev \
            libxml2-dev \
            libxml2-utils \
            libyajl-dev \
            locales \
            lvm2 \
            make \
            nfs-common \
            ninja-build \
            numad \
            open-iscsi \
            perl-base \
            pkgconf \
            policykit-1 \
            python3 \
            python3-docutils \
            python3-pip \
            python3-setuptools \
            python3-wheel \
            qemu-utils \
            scrub \
            sed \
            systemtap-sdt-dev \
            wireshark-dev \
            xsltproc
    sed -Ei 's,^# (en_US\.UTF-8 .*)$,\1,' /etc/locale.gen
    dpkg-reconfigure locales
    dpkg-query --showformat '${Package}_${Version}_${Architecture}\n' --show > /packages.txt
    mkdir -p /usr/libexec/ccache-wrappers
    ln -s /usr/bin/ccache /usr/libexec/ccache-wrappers/cc
    ln -s /usr/bin/ccache /usr/libexec/ccache-wrappers/clang
    ln -s /usr/bin/ccache /usr/libexec/ccache-wrappers/gcc
    /usr/bin/pip3 install meson==0.56.0
}

export CCACHE_WRAPPERSDIR="/usr/libexec/ccache-wrappers"
export LANG="en_US.UTF-8"
export MAKE="/usr/bin/make"
export NINJA="/usr/bin/ninja"
export PYTHON="/usr/bin/python3"