echo '======= Install qemu.sh ======'
if [ -f ${HOME_PATH}/.features/qemu ]
then
    echo "qemu already installed."
    exit 0
fi

export CPU_INFO=$(uname -m)

if [ "${CPU_INFO}" = "x86_64" ]
then
    echo "${CPU_INFO} qemu can not installed."
    exit 0
fi

# can docker run --platform=amd64 {any-amd64-images}
apt-get install qemu binfmt-support qemu-user-static

su ${USER_NAME} -c "docker run --privileged --rm tonistiigi/binfmt --install all"
