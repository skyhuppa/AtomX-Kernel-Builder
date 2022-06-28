#bin/#!/bin/bash

###############################   MISC   ###################################

	#gut() {
	#	git clone --depth=1 -q $@
	#}

############################################################################

######################## Setup Telegram API ################################

	git clone https://github.com/fabianonline/telegram.sh $HOME/telegram.sh
	mv .telegram.sh $HOME/.telegram.sh
	sed -i s/demo1/${BOT_API_KEY}/g $HOME/.telegram.sh
	sed -i s/demo2/${CHAT_ID}/g $HOME/.telegram.sh
	#mkdir $HOME/.config
	#mv telegram-send.conf $HOME/.config/telegram-send.conf

############################################################################

############################## Setup Toolchains ############################

	mkdir toolchains
	git clone https://github.com/mvaisakh/gcc-arm -b gcc-master toolchains/gcc-arm
	git clone https://github.com/kdrag0n/proton-clang -b master toolchains/clang

############################################################################

############################## Setup AnyKernel #############################

	git clone https://github.com/Atom-X-Devs/AnyKernel3 -b main AnyKernel3

############################################################################

############################## Setup Kernel ################################

	git clone https://github.com/skyhuppa/android_kernel_xiaomi_sm7325 -b kernel.lnx.5.4.r1-rel Kernel

############################################################################

############################ Setup Scripts #################################

	mv AtomX.sh Kernel/AtomX.sh
	cd Kernel
	bash AtomX.sh --compiler=clang --device=lisa

############################################################################
