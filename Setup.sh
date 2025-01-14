#bin/#!/bin/bash


###############################   MISC   ###################################

	gut() {
		git clone --depth=1 -q $@
	}

############################################################################

######################## Setup Telegram API ################################

	pip -q install telegram-send
	gut https://github.com/rahiel/telegram-send -b master -q telegram-send
	sed -i s/demo1/${BOT_API_KEY}/g telegram-send.conf
	sed -i s/demo2/${CHAT_ID}/g telegram-send.conf
	mkdir $HOME/.config
	mv telegram-send.conf $HOME/.config/telegram-send.conf

############################################################################

############################## Setup Toolchains ############################

	mkdir toolchains
	gut https://github.com/mvaisakh/gcc-arm -b gcc-master toolchains/gcc-arm
	gut https://github.com/kdrag0n/proton-clang -b master toolchains/clang

############################################################################

############################## Setup AnyKernel #############################

	gut https://github.com/Atom-X-Devs/AnyKernel3 -b main AnyKernel3

############################################################################

############################## Setup Kernel ################################

	gut https://github.com/skyhuppa/android_kernel_xiaomi_sm7325 -b kernel.lnx.5.4.r1-rel Kernel

############################################################################

############################ Setup Scripts #################################

	mv AtomX.sh Kernel/AtomX.sh
	cd Kernel
	bash AtomX.sh --compiler=clang --device=lisa

############################################################################
