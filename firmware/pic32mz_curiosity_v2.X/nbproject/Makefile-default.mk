#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pic32mz_curiosity_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pic32mz_curiosity_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/bsp/bsp.c ../src/config/default/crypto/src/crypto.c ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac.c ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../src/config/default/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c ../src/config/default/driver/ethphy/src/dynamic/drv_ethphy.c ../src/config/default/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c ../src/config/default/driver/miim/src/dynamic/drv_miim.c ../src/config/default/driver/usb/usbhs/src/drv_usbhs.c ../src/config/default/driver/usb/usbhs/src/drv_usbhs_device.c ../src/config/default/library/tcpip/src/helpers.c ../src/config/default/library/tcpip/src/icmp.c ../src/config/default/library/tcpip/src/tcp.c ../src/config/default/library/tcpip/src/arp.c ../src/config/default/library/tcpip/src/tcpip_commands.c ../src/config/default/library/tcpip/src/ipv4.c ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c ../src/config/default/library/tcpip/src/tcpip_heap_internal.c ../src/config/default/library/tcpip/src/dhcp.c ../src/config/default/library/tcpip/src/dns.c ../src/config/default/library/tcpip/src/hash_fnv.c ../src/config/default/library/tcpip/src/oahash.c ../src/config/default/library/tcpip/src/tcpip_helpers.c ../src/config/default/library/tcpip/src/tcpip_helper_c32.S ../src/config/default/library/tcpip/src/tcpip_manager.c ../src/config/default/library/tcpip/src/tcpip_notify.c ../src/config/default/library/tcpip/src/tcpip_packet.c ../src/config/default/library/tcpip/src/sntp.c ../src/config/default/library/tcpip/src/udp.c ../src/config/default/library/tcpip/src/nbns.c ../src/config/default/library/tcpip/src/tcpip_announce.c ../src/config/default/library/tcpip/src/iperf.c ../src/config/default/library/tcpip/src/telnet.c ../src/config/default/net_pres/pres/src/net_pres.c ../src/config/default/net_pres/pres/net_pres_enc_glue.c ../src/config/default/net_pres/pres/net_pres_cert_store.c ../src/config/default/peripheral/cache/plib_cache.c ../src/config/default/peripheral/cache/plib_cache_pic32mz.S ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/rtcc/plib_rtcc.c ../src/config/default/peripheral/uart/plib_uart6.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/cache/sys_cache.c ../src/config/default/system/command/src/sys_command.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/system/console/src/sys_console_usb_cdc.c ../src/config/default/system/debug/src/sys_debug.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/reset/sys_reset.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/system/sys_time_h2_adapter.c ../src/config/default/system/sys_random_h2_adapter.c ../src/config/default/third_party_adapter/wolfMQTT/src/mqtt_net_glue.c ../src/config/default/usb/src/usb_device.c ../src/config/default/usb/src/usb_device_cdc.c ../src/config/default/usb/src/usb_device_cdc_acm.c ../src/config/default/tasks.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/usb_device_init_data.c ../src/third_party/wolfMQTT/src/mqtt_client.c ../src/third_party/wolfMQTT/src/mqtt_packet.c ../src/third_party/wolfMQTT/src/mqtt_socket.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c ../src/third_party/wolfssl/src/crl.c ../src/third_party/wolfssl/src/keys.c ../src/third_party/wolfssl/src/ocsp.c ../src/third_party/wolfssl/src/sniffer.c ../src/third_party/wolfssl/src/ssl.c ../src/third_party/wolfssl/src/tls.c ../src/third_party/wolfssl/src/tls13.c ../src/third_party/wolfssl/src/wolfio.c ../src/third_party/wolfssl/src/internal.c ../src/app.c ../src/main.c ../src/app_commands.c ../src/app_rtcc.c ../src/app_mqtt_commands.c ../src/app_mqtt_task.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1434821282/bsp.o ${OBJECTDIR}/_ext/1645245335/crypto.o ${OBJECTDIR}/_ext/732082881/drv_ethmac.o ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o ${OBJECTDIR}/_ext/444070925/drv_ethphy.o ${OBJECTDIR}/_ext/444070925/drv_extphy_ksz8061.o ${OBJECTDIR}/_ext/438849557/drv_miim.o ${OBJECTDIR}/_ext/2071311437/drv_usbhs.o ${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o ${OBJECTDIR}/_ext/1033058136/helpers.o ${OBJECTDIR}/_ext/1033058136/icmp.o ${OBJECTDIR}/_ext/1033058136/tcp.o ${OBJECTDIR}/_ext/1033058136/arp.o ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o ${OBJECTDIR}/_ext/1033058136/ipv4.o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o ${OBJECTDIR}/_ext/1033058136/dhcp.o ${OBJECTDIR}/_ext/1033058136/dns.o ${OBJECTDIR}/_ext/1033058136/hash_fnv.o ${OBJECTDIR}/_ext/1033058136/oahash.o ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o ${OBJECTDIR}/_ext/1033058136/sntp.o ${OBJECTDIR}/_ext/1033058136/udp.o ${OBJECTDIR}/_ext/1033058136/nbns.o ${OBJECTDIR}/_ext/1033058136/tcpip_announce.o ${OBJECTDIR}/_ext/1033058136/iperf.o ${OBJECTDIR}/_ext/1033058136/telnet.o ${OBJECTDIR}/_ext/1508031553/net_pres.o ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o ${OBJECTDIR}/_ext/1984157808/plib_cache.o ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1865585524/plib_rtcc.o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1014039709/sys_cache.o ${OBJECTDIR}/_ext/1376093119/sys_command.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o ${OBJECTDIR}/_ext/944882569/sys_debug.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/1000052432/sys_reset.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o ${OBJECTDIR}/_ext/2056773213/mqtt_net_glue.o ${OBJECTDIR}/_ext/308758920/usb_device.o ${OBJECTDIR}/_ext/308758920/usb_device_cdc.o ${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ${OBJECTDIR}/_ext/751086310/mqtt_client.o ${OBJECTDIR}/_ext/751086310/mqtt_packet.o ${OBJECTDIR}/_ext/751086310/mqtt_socket.o ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o ${OBJECTDIR}/_ext/1664057780/arc4.o ${OBJECTDIR}/_ext/1664057780/asm.o ${OBJECTDIR}/_ext/1664057780/asn.o ${OBJECTDIR}/_ext/1664057780/blake2b.o ${OBJECTDIR}/_ext/1664057780/blake2s.o ${OBJECTDIR}/_ext/1664057780/camellia.o ${OBJECTDIR}/_ext/1664057780/chacha.o ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o ${OBJECTDIR}/_ext/1664057780/cmac.o ${OBJECTDIR}/_ext/1664057780/coding.o ${OBJECTDIR}/_ext/1664057780/compress.o ${OBJECTDIR}/_ext/1664057780/cpuid.o ${OBJECTDIR}/_ext/1664057780/cryptocb.o ${OBJECTDIR}/_ext/1664057780/curve25519.o ${OBJECTDIR}/_ext/1664057780/curve448.o ${OBJECTDIR}/_ext/1664057780/dh.o ${OBJECTDIR}/_ext/1664057780/dsa.o ${OBJECTDIR}/_ext/1664057780/ecc_fp.o ${OBJECTDIR}/_ext/1664057780/ed25519.o ${OBJECTDIR}/_ext/1664057780/ed448.o ${OBJECTDIR}/_ext/1664057780/error.o ${OBJECTDIR}/_ext/1664057780/fe_448.o ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o ${OBJECTDIR}/_ext/1664057780/fe_operations.o ${OBJECTDIR}/_ext/1664057780/ge_448.o ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o ${OBJECTDIR}/_ext/1664057780/ge_operations.o ${OBJECTDIR}/_ext/1664057780/hash.o ${OBJECTDIR}/_ext/1664057780/hc128.o ${OBJECTDIR}/_ext/1664057780/hmac.o ${OBJECTDIR}/_ext/1664057780/idea.o ${OBJECTDIR}/_ext/1664057780/integer.o ${OBJECTDIR}/_ext/1664057780/logging.o ${OBJECTDIR}/_ext/1664057780/md2.o ${OBJECTDIR}/_ext/1664057780/md4.o ${OBJECTDIR}/_ext/1664057780/md5.o ${OBJECTDIR}/_ext/1664057780/memory.o ${OBJECTDIR}/_ext/1664057780/pkcs12.o ${OBJECTDIR}/_ext/1664057780/pkcs7.o ${OBJECTDIR}/_ext/1664057780/poly1305.o ${OBJECTDIR}/_ext/1664057780/pwdbased.o ${OBJECTDIR}/_ext/1664057780/rabbit.o ${OBJECTDIR}/_ext/1664057780/rc2.o ${OBJECTDIR}/_ext/1664057780/ripemd.o ${OBJECTDIR}/_ext/1664057780/rsa.o ${OBJECTDIR}/_ext/1664057780/sha3.o ${OBJECTDIR}/_ext/1664057780/signature.o ${OBJECTDIR}/_ext/1664057780/sp_arm32.o ${OBJECTDIR}/_ext/1664057780/sp_arm64.o ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o ${OBJECTDIR}/_ext/1664057780/sp_c32.o ${OBJECTDIR}/_ext/1664057780/sp_c64.o ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o ${OBJECTDIR}/_ext/1664057780/sp_int.o ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o ${OBJECTDIR}/_ext/1664057780/srp.o ${OBJECTDIR}/_ext/1664057780/tfm.o ${OBJECTDIR}/_ext/1664057780/wc_dsp.o ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o ${OBJECTDIR}/_ext/1664057780/wc_port.o ${OBJECTDIR}/_ext/1664057780/wolfevent.o ${OBJECTDIR}/_ext/1664057780/wolfmath.o ${OBJECTDIR}/_ext/1664057780/aes.o ${OBJECTDIR}/_ext/1664057780/des3.o ${OBJECTDIR}/_ext/1664057780/random.o ${OBJECTDIR}/_ext/1664057780/sha.o ${OBJECTDIR}/_ext/1664057780/sha256.o ${OBJECTDIR}/_ext/1664057780/sha512.o ${OBJECTDIR}/_ext/1664057780/ecc.o ${OBJECTDIR}/_ext/2046716756/crl.o ${OBJECTDIR}/_ext/2046716756/keys.o ${OBJECTDIR}/_ext/2046716756/ocsp.o ${OBJECTDIR}/_ext/2046716756/sniffer.o ${OBJECTDIR}/_ext/2046716756/ssl.o ${OBJECTDIR}/_ext/2046716756/tls.o ${OBJECTDIR}/_ext/2046716756/tls13.o ${OBJECTDIR}/_ext/2046716756/wolfio.o ${OBJECTDIR}/_ext/2046716756/internal.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_commands.o ${OBJECTDIR}/_ext/1360937237/app_rtcc.o ${OBJECTDIR}/_ext/1360937237/app_mqtt_commands.o ${OBJECTDIR}/_ext/1360937237/app_mqtt_task.o ${OBJECTDIR}/_ext/1664057780/misc.o ${OBJECTDIR}/_ext/1664057780/evp.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1434821282/bsp.o.d ${OBJECTDIR}/_ext/1645245335/crypto.o.d ${OBJECTDIR}/_ext/732082881/drv_ethmac.o.d ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o.d ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o.d ${OBJECTDIR}/_ext/444070925/drv_ethphy.o.d ${OBJECTDIR}/_ext/444070925/drv_extphy_ksz8061.o.d ${OBJECTDIR}/_ext/438849557/drv_miim.o.d ${OBJECTDIR}/_ext/2071311437/drv_usbhs.o.d ${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o.d ${OBJECTDIR}/_ext/1033058136/helpers.o.d ${OBJECTDIR}/_ext/1033058136/icmp.o.d ${OBJECTDIR}/_ext/1033058136/tcp.o.d ${OBJECTDIR}/_ext/1033058136/arp.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o.d ${OBJECTDIR}/_ext/1033058136/ipv4.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o.d ${OBJECTDIR}/_ext/1033058136/dhcp.o.d ${OBJECTDIR}/_ext/1033058136/dns.o.d ${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d ${OBJECTDIR}/_ext/1033058136/oahash.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d ${OBJECTDIR}/_ext/1033058136/sntp.o.d ${OBJECTDIR}/_ext/1033058136/udp.o.d ${OBJECTDIR}/_ext/1033058136/nbns.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_announce.o.d ${OBJECTDIR}/_ext/1033058136/iperf.o.d ${OBJECTDIR}/_ext/1033058136/telnet.o.d ${OBJECTDIR}/_ext/1508031553/net_pres.o.d ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o.d ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o.d ${OBJECTDIR}/_ext/1984157808/plib_cache.o.d ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/1865585524/plib_rtcc.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1014039709/sys_cache.o.d ${OBJECTDIR}/_ext/1376093119/sys_command.o.d ${OBJECTDIR}/_ext/1832805299/sys_console.o.d ${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o.d ${OBJECTDIR}/_ext/944882569/sys_debug.o.d ${OBJECTDIR}/_ext/1881668453/sys_int.o.d ${OBJECTDIR}/_ext/1000052432/sys_reset.o.d ${OBJECTDIR}/_ext/101884895/sys_time.o.d ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o.d ${OBJECTDIR}/_ext/2056773213/mqtt_net_glue.o.d ${OBJECTDIR}/_ext/308758920/usb_device.o.d ${OBJECTDIR}/_ext/308758920/usb_device_cdc.o.d ${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o.d ${OBJECTDIR}/_ext/1171490990/tasks.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d ${OBJECTDIR}/_ext/751086310/mqtt_client.o.d ${OBJECTDIR}/_ext/751086310/mqtt_packet.o.d ${OBJECTDIR}/_ext/751086310/mqtt_socket.o.d ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d ${OBJECTDIR}/_ext/1664057780/arc4.o.d ${OBJECTDIR}/_ext/1664057780/asm.o.d ${OBJECTDIR}/_ext/1664057780/asn.o.d ${OBJECTDIR}/_ext/1664057780/blake2b.o.d ${OBJECTDIR}/_ext/1664057780/blake2s.o.d ${OBJECTDIR}/_ext/1664057780/camellia.o.d ${OBJECTDIR}/_ext/1664057780/chacha.o.d ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d ${OBJECTDIR}/_ext/1664057780/cmac.o.d ${OBJECTDIR}/_ext/1664057780/coding.o.d ${OBJECTDIR}/_ext/1664057780/compress.o.d ${OBJECTDIR}/_ext/1664057780/cpuid.o.d ${OBJECTDIR}/_ext/1664057780/cryptocb.o.d ${OBJECTDIR}/_ext/1664057780/curve25519.o.d ${OBJECTDIR}/_ext/1664057780/curve448.o.d ${OBJECTDIR}/_ext/1664057780/dh.o.d ${OBJECTDIR}/_ext/1664057780/dsa.o.d ${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d ${OBJECTDIR}/_ext/1664057780/ed25519.o.d ${OBJECTDIR}/_ext/1664057780/ed448.o.d ${OBJECTDIR}/_ext/1664057780/error.o.d ${OBJECTDIR}/_ext/1664057780/fe_448.o.d ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d ${OBJECTDIR}/_ext/1664057780/fe_operations.o.d ${OBJECTDIR}/_ext/1664057780/ge_448.o.d ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d ${OBJECTDIR}/_ext/1664057780/ge_operations.o.d ${OBJECTDIR}/_ext/1664057780/hash.o.d ${OBJECTDIR}/_ext/1664057780/hc128.o.d ${OBJECTDIR}/_ext/1664057780/hmac.o.d ${OBJECTDIR}/_ext/1664057780/idea.o.d ${OBJECTDIR}/_ext/1664057780/integer.o.d ${OBJECTDIR}/_ext/1664057780/logging.o.d ${OBJECTDIR}/_ext/1664057780/md2.o.d ${OBJECTDIR}/_ext/1664057780/md4.o.d ${OBJECTDIR}/_ext/1664057780/md5.o.d ${OBJECTDIR}/_ext/1664057780/memory.o.d ${OBJECTDIR}/_ext/1664057780/pkcs12.o.d ${OBJECTDIR}/_ext/1664057780/pkcs7.o.d ${OBJECTDIR}/_ext/1664057780/poly1305.o.d ${OBJECTDIR}/_ext/1664057780/pwdbased.o.d ${OBJECTDIR}/_ext/1664057780/rabbit.o.d ${OBJECTDIR}/_ext/1664057780/rc2.o.d ${OBJECTDIR}/_ext/1664057780/ripemd.o.d ${OBJECTDIR}/_ext/1664057780/rsa.o.d ${OBJECTDIR}/_ext/1664057780/sha3.o.d ${OBJECTDIR}/_ext/1664057780/signature.o.d ${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d ${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d ${OBJECTDIR}/_ext/1664057780/sp_c32.o.d ${OBJECTDIR}/_ext/1664057780/sp_c64.o.d ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d ${OBJECTDIR}/_ext/1664057780/sp_int.o.d ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d ${OBJECTDIR}/_ext/1664057780/srp.o.d ${OBJECTDIR}/_ext/1664057780/tfm.o.d ${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d ${OBJECTDIR}/_ext/1664057780/wc_port.o.d ${OBJECTDIR}/_ext/1664057780/wolfevent.o.d ${OBJECTDIR}/_ext/1664057780/wolfmath.o.d ${OBJECTDIR}/_ext/1664057780/aes.o.d ${OBJECTDIR}/_ext/1664057780/des3.o.d ${OBJECTDIR}/_ext/1664057780/random.o.d ${OBJECTDIR}/_ext/1664057780/sha.o.d ${OBJECTDIR}/_ext/1664057780/sha256.o.d ${OBJECTDIR}/_ext/1664057780/sha512.o.d ${OBJECTDIR}/_ext/1664057780/ecc.o.d ${OBJECTDIR}/_ext/2046716756/crl.o.d ${OBJECTDIR}/_ext/2046716756/keys.o.d ${OBJECTDIR}/_ext/2046716756/ocsp.o.d ${OBJECTDIR}/_ext/2046716756/sniffer.o.d ${OBJECTDIR}/_ext/2046716756/ssl.o.d ${OBJECTDIR}/_ext/2046716756/tls.o.d ${OBJECTDIR}/_ext/2046716756/tls13.o.d ${OBJECTDIR}/_ext/2046716756/wolfio.o.d ${OBJECTDIR}/_ext/2046716756/internal.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app_commands.o.d ${OBJECTDIR}/_ext/1360937237/app_rtcc.o.d ${OBJECTDIR}/_ext/1360937237/app_mqtt_commands.o.d ${OBJECTDIR}/_ext/1360937237/app_mqtt_task.o.d ${OBJECTDIR}/_ext/1664057780/misc.o.d ${OBJECTDIR}/_ext/1664057780/evp.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1434821282/bsp.o ${OBJECTDIR}/_ext/1645245335/crypto.o ${OBJECTDIR}/_ext/732082881/drv_ethmac.o ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o ${OBJECTDIR}/_ext/444070925/drv_ethphy.o ${OBJECTDIR}/_ext/444070925/drv_extphy_ksz8061.o ${OBJECTDIR}/_ext/438849557/drv_miim.o ${OBJECTDIR}/_ext/2071311437/drv_usbhs.o ${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o ${OBJECTDIR}/_ext/1033058136/helpers.o ${OBJECTDIR}/_ext/1033058136/icmp.o ${OBJECTDIR}/_ext/1033058136/tcp.o ${OBJECTDIR}/_ext/1033058136/arp.o ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o ${OBJECTDIR}/_ext/1033058136/ipv4.o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o ${OBJECTDIR}/_ext/1033058136/dhcp.o ${OBJECTDIR}/_ext/1033058136/dns.o ${OBJECTDIR}/_ext/1033058136/hash_fnv.o ${OBJECTDIR}/_ext/1033058136/oahash.o ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o ${OBJECTDIR}/_ext/1033058136/sntp.o ${OBJECTDIR}/_ext/1033058136/udp.o ${OBJECTDIR}/_ext/1033058136/nbns.o ${OBJECTDIR}/_ext/1033058136/tcpip_announce.o ${OBJECTDIR}/_ext/1033058136/iperf.o ${OBJECTDIR}/_ext/1033058136/telnet.o ${OBJECTDIR}/_ext/1508031553/net_pres.o ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o ${OBJECTDIR}/_ext/1984157808/plib_cache.o ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1865585524/plib_rtcc.o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1014039709/sys_cache.o ${OBJECTDIR}/_ext/1376093119/sys_command.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o ${OBJECTDIR}/_ext/944882569/sys_debug.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/1000052432/sys_reset.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o ${OBJECTDIR}/_ext/2056773213/mqtt_net_glue.o ${OBJECTDIR}/_ext/308758920/usb_device.o ${OBJECTDIR}/_ext/308758920/usb_device_cdc.o ${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ${OBJECTDIR}/_ext/751086310/mqtt_client.o ${OBJECTDIR}/_ext/751086310/mqtt_packet.o ${OBJECTDIR}/_ext/751086310/mqtt_socket.o ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o ${OBJECTDIR}/_ext/1664057780/arc4.o ${OBJECTDIR}/_ext/1664057780/asm.o ${OBJECTDIR}/_ext/1664057780/asn.o ${OBJECTDIR}/_ext/1664057780/blake2b.o ${OBJECTDIR}/_ext/1664057780/blake2s.o ${OBJECTDIR}/_ext/1664057780/camellia.o ${OBJECTDIR}/_ext/1664057780/chacha.o ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o ${OBJECTDIR}/_ext/1664057780/cmac.o ${OBJECTDIR}/_ext/1664057780/coding.o ${OBJECTDIR}/_ext/1664057780/compress.o ${OBJECTDIR}/_ext/1664057780/cpuid.o ${OBJECTDIR}/_ext/1664057780/cryptocb.o ${OBJECTDIR}/_ext/1664057780/curve25519.o ${OBJECTDIR}/_ext/1664057780/curve448.o ${OBJECTDIR}/_ext/1664057780/dh.o ${OBJECTDIR}/_ext/1664057780/dsa.o ${OBJECTDIR}/_ext/1664057780/ecc_fp.o ${OBJECTDIR}/_ext/1664057780/ed25519.o ${OBJECTDIR}/_ext/1664057780/ed448.o ${OBJECTDIR}/_ext/1664057780/error.o ${OBJECTDIR}/_ext/1664057780/fe_448.o ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o ${OBJECTDIR}/_ext/1664057780/fe_operations.o ${OBJECTDIR}/_ext/1664057780/ge_448.o ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o ${OBJECTDIR}/_ext/1664057780/ge_operations.o ${OBJECTDIR}/_ext/1664057780/hash.o ${OBJECTDIR}/_ext/1664057780/hc128.o ${OBJECTDIR}/_ext/1664057780/hmac.o ${OBJECTDIR}/_ext/1664057780/idea.o ${OBJECTDIR}/_ext/1664057780/integer.o ${OBJECTDIR}/_ext/1664057780/logging.o ${OBJECTDIR}/_ext/1664057780/md2.o ${OBJECTDIR}/_ext/1664057780/md4.o ${OBJECTDIR}/_ext/1664057780/md5.o ${OBJECTDIR}/_ext/1664057780/memory.o ${OBJECTDIR}/_ext/1664057780/pkcs12.o ${OBJECTDIR}/_ext/1664057780/pkcs7.o ${OBJECTDIR}/_ext/1664057780/poly1305.o ${OBJECTDIR}/_ext/1664057780/pwdbased.o ${OBJECTDIR}/_ext/1664057780/rabbit.o ${OBJECTDIR}/_ext/1664057780/rc2.o ${OBJECTDIR}/_ext/1664057780/ripemd.o ${OBJECTDIR}/_ext/1664057780/rsa.o ${OBJECTDIR}/_ext/1664057780/sha3.o ${OBJECTDIR}/_ext/1664057780/signature.o ${OBJECTDIR}/_ext/1664057780/sp_arm32.o ${OBJECTDIR}/_ext/1664057780/sp_arm64.o ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o ${OBJECTDIR}/_ext/1664057780/sp_c32.o ${OBJECTDIR}/_ext/1664057780/sp_c64.o ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o ${OBJECTDIR}/_ext/1664057780/sp_int.o ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o ${OBJECTDIR}/_ext/1664057780/srp.o ${OBJECTDIR}/_ext/1664057780/tfm.o ${OBJECTDIR}/_ext/1664057780/wc_dsp.o ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o ${OBJECTDIR}/_ext/1664057780/wc_port.o ${OBJECTDIR}/_ext/1664057780/wolfevent.o ${OBJECTDIR}/_ext/1664057780/wolfmath.o ${OBJECTDIR}/_ext/1664057780/aes.o ${OBJECTDIR}/_ext/1664057780/des3.o ${OBJECTDIR}/_ext/1664057780/random.o ${OBJECTDIR}/_ext/1664057780/sha.o ${OBJECTDIR}/_ext/1664057780/sha256.o ${OBJECTDIR}/_ext/1664057780/sha512.o ${OBJECTDIR}/_ext/1664057780/ecc.o ${OBJECTDIR}/_ext/2046716756/crl.o ${OBJECTDIR}/_ext/2046716756/keys.o ${OBJECTDIR}/_ext/2046716756/ocsp.o ${OBJECTDIR}/_ext/2046716756/sniffer.o ${OBJECTDIR}/_ext/2046716756/ssl.o ${OBJECTDIR}/_ext/2046716756/tls.o ${OBJECTDIR}/_ext/2046716756/tls13.o ${OBJECTDIR}/_ext/2046716756/wolfio.o ${OBJECTDIR}/_ext/2046716756/internal.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_commands.o ${OBJECTDIR}/_ext/1360937237/app_rtcc.o ${OBJECTDIR}/_ext/1360937237/app_mqtt_commands.o ${OBJECTDIR}/_ext/1360937237/app_mqtt_task.o ${OBJECTDIR}/_ext/1664057780/misc.o ${OBJECTDIR}/_ext/1664057780/evp.o

# Source Files
SOURCEFILES=../src/config/default/bsp/bsp.c ../src/config/default/crypto/src/crypto.c ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac.c ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../src/config/default/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c ../src/config/default/driver/ethphy/src/dynamic/drv_ethphy.c ../src/config/default/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c ../src/config/default/driver/miim/src/dynamic/drv_miim.c ../src/config/default/driver/usb/usbhs/src/drv_usbhs.c ../src/config/default/driver/usb/usbhs/src/drv_usbhs_device.c ../src/config/default/library/tcpip/src/helpers.c ../src/config/default/library/tcpip/src/icmp.c ../src/config/default/library/tcpip/src/tcp.c ../src/config/default/library/tcpip/src/arp.c ../src/config/default/library/tcpip/src/tcpip_commands.c ../src/config/default/library/tcpip/src/ipv4.c ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c ../src/config/default/library/tcpip/src/tcpip_heap_internal.c ../src/config/default/library/tcpip/src/dhcp.c ../src/config/default/library/tcpip/src/dns.c ../src/config/default/library/tcpip/src/hash_fnv.c ../src/config/default/library/tcpip/src/oahash.c ../src/config/default/library/tcpip/src/tcpip_helpers.c ../src/config/default/library/tcpip/src/tcpip_helper_c32.S ../src/config/default/library/tcpip/src/tcpip_manager.c ../src/config/default/library/tcpip/src/tcpip_notify.c ../src/config/default/library/tcpip/src/tcpip_packet.c ../src/config/default/library/tcpip/src/sntp.c ../src/config/default/library/tcpip/src/udp.c ../src/config/default/library/tcpip/src/nbns.c ../src/config/default/library/tcpip/src/tcpip_announce.c ../src/config/default/library/tcpip/src/iperf.c ../src/config/default/library/tcpip/src/telnet.c ../src/config/default/net_pres/pres/src/net_pres.c ../src/config/default/net_pres/pres/net_pres_enc_glue.c ../src/config/default/net_pres/pres/net_pres_cert_store.c ../src/config/default/peripheral/cache/plib_cache.c ../src/config/default/peripheral/cache/plib_cache_pic32mz.S ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/rtcc/plib_rtcc.c ../src/config/default/peripheral/uart/plib_uart6.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/cache/sys_cache.c ../src/config/default/system/command/src/sys_command.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/system/console/src/sys_console_usb_cdc.c ../src/config/default/system/debug/src/sys_debug.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/reset/sys_reset.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/system/sys_time_h2_adapter.c ../src/config/default/system/sys_random_h2_adapter.c ../src/config/default/third_party_adapter/wolfMQTT/src/mqtt_net_glue.c ../src/config/default/usb/src/usb_device.c ../src/config/default/usb/src/usb_device_cdc.c ../src/config/default/usb/src/usb_device_cdc_acm.c ../src/config/default/tasks.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/usb_device_init_data.c ../src/third_party/wolfMQTT/src/mqtt_client.c ../src/third_party/wolfMQTT/src/mqtt_packet.c ../src/third_party/wolfMQTT/src/mqtt_socket.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c ../src/third_party/wolfssl/src/crl.c ../src/third_party/wolfssl/src/keys.c ../src/third_party/wolfssl/src/ocsp.c ../src/third_party/wolfssl/src/sniffer.c ../src/third_party/wolfssl/src/ssl.c ../src/third_party/wolfssl/src/tls.c ../src/third_party/wolfssl/src/tls13.c ../src/third_party/wolfssl/src/wolfio.c ../src/third_party/wolfssl/src/internal.c ../src/app.c ../src/main.c ../src/app_commands.c ../src/app_rtcc.c ../src/app_mqtt_commands.c ../src/app_mqtt_task.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/pic32mz_curiosity_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM144
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\p32MZ2048EFM144.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o: ../src/config/default/library/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/default/d43bd50b1450486d31ba5ef88c9b8dc18c126bdf .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o ../src/config/default/library/tcpip/src/tcpip_helper_c32.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o: ../src/config/default/peripheral/cache/plib_cache_pic32mz.S  .generated_files/flags/default/7b3fb969b2342e62f4905102f9a7472ff34c0af .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1984157808" 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o ../src/config/default/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o: ../src/config/default/library/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/default/df74a4fe74ad53f818bafc09360983dc71014a61 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o ../src/config/default/library/tcpip/src/tcpip_helper_c32.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o: ../src/config/default/peripheral/cache/plib_cache_pic32mz.S  .generated_files/flags/default/3ba881a2fe3d18fa740147c45cba31dc01db9d4e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1984157808" 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o ../src/config/default/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  .generated_files/flags/default/c5c9ae0c1d600fc7460c98e3d2363df202f870c3 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1645245335/crypto.o: ../src/config/default/crypto/src/crypto.c  .generated_files/flags/default/9b0b5333d2c9fa290e75349625384ebb3854d247 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1645245335" 
	@${RM} ${OBJECTDIR}/_ext/1645245335/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1645245335/crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1645245335/crypto.o.d" -o ${OBJECTDIR}/_ext/1645245335/crypto.o ../src/config/default/crypto/src/crypto.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732082881/drv_ethmac.o: ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/default/f06e757427f0fb240fcaf59f247ed5a1ebe4b2d7 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/732082881" 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/732082881/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/732082881/drv_ethmac.o ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o: ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/default/34223306a010a7b36281366b41a425de5e31d877 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/732082881" 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o: ../src/config/default/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c  .generated_files/flags/default/b6f0dda83c4c321fe9238362e1e4cdcfdc64da2e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/732082881" 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o.d" -o ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o ../src/config/default/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/444070925/drv_ethphy.o: ../src/config/default/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/default/2d250fb29caa459bffd042188df660a6af604a9 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/444070925" 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/444070925/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/444070925/drv_ethphy.o ../src/config/default/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/444070925/drv_extphy_ksz8061.o: ../src/config/default/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c  .generated_files/flags/default/ee5112dbaf30782a31fb5c668e030666ca5424f0 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/444070925" 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_extphy_ksz8061.o.d 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_extphy_ksz8061.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/444070925/drv_extphy_ksz8061.o.d" -o ${OBJECTDIR}/_ext/444070925/drv_extphy_ksz8061.o ../src/config/default/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/438849557/drv_miim.o: ../src/config/default/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/default/e5277e14fdd85892f4b66dfd4526ffb0d4d54c2 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/438849557" 
	@${RM} ${OBJECTDIR}/_ext/438849557/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/438849557/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/438849557/drv_miim.o.d" -o ${OBJECTDIR}/_ext/438849557/drv_miim.o ../src/config/default/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2071311437/drv_usbhs.o: ../src/config/default/driver/usb/usbhs/src/drv_usbhs.c  .generated_files/flags/default/43fe2fefc555da17a93ad0bf09432b58de6839f9 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2071311437" 
	@${RM} ${OBJECTDIR}/_ext/2071311437/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2071311437/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2071311437/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/2071311437/drv_usbhs.o ../src/config/default/driver/usb/usbhs/src/drv_usbhs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o: ../src/config/default/driver/usb/usbhs/src/drv_usbhs_device.c  .generated_files/flags/default/73214c6c73c597cf51cbab12805f1c850debfd8 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2071311437" 
	@${RM} ${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o ../src/config/default/driver/usb/usbhs/src/drv_usbhs_device.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/helpers.o: ../src/config/default/library/tcpip/src/helpers.c  .generated_files/flags/default/2d8306fbb61a81761982155df019fd73afce052d .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/helpers.o.d" -o ${OBJECTDIR}/_ext/1033058136/helpers.o ../src/config/default/library/tcpip/src/helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/icmp.o: ../src/config/default/library/tcpip/src/icmp.c  .generated_files/flags/default/f9c43e235360074208d14f9fc7e127b0bd5f673 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/icmp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/icmp.o.d" -o ${OBJECTDIR}/_ext/1033058136/icmp.o ../src/config/default/library/tcpip/src/icmp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcp.o: ../src/config/default/library/tcpip/src/tcp.c  .generated_files/flags/default/ac5459f5fb9a864271f116f28199a156ec93331d .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcp.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcp.o ../src/config/default/library/tcpip/src/tcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/arp.o: ../src/config/default/library/tcpip/src/arp.c  .generated_files/flags/default/608c8e878c33bffe19d948a2ac5ae1ef53ecad1f .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/arp.o.d" -o ${OBJECTDIR}/_ext/1033058136/arp.o ../src/config/default/library/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_commands.o: ../src/config/default/library/tcpip/src/tcpip_commands.c  .generated_files/flags/default/ea6f41b350e4dda78ea7cadaaa9a77fdb70fae8e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_commands.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o ../src/config/default/library/tcpip/src/tcpip_commands.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/ipv4.o: ../src/config/default/library/tcpip/src/ipv4.c  .generated_files/flags/default/9d6836f84545ab1b3a6be6f5de313c633f675575 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/ipv4.o.d" -o ${OBJECTDIR}/_ext/1033058136/ipv4.o ../src/config/default/library/tcpip/src/ipv4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o: ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/default/278bc30c7a5fa14e0e390bd3399e4edcef06436e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o: ../src/config/default/library/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/default/ccc8287fe13fbba0b561476fded939cf868fbeb8 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o ../src/config/default/library/tcpip/src/tcpip_heap_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/dhcp.o: ../src/config/default/library/tcpip/src/dhcp.c  .generated_files/flags/default/a89b6a51f974a0b232b44221177029a15f44bd89 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/dhcp.o.d" -o ${OBJECTDIR}/_ext/1033058136/dhcp.o ../src/config/default/library/tcpip/src/dhcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/dns.o: ../src/config/default/library/tcpip/src/dns.c  .generated_files/flags/default/406c85668bca60aa5f8352bf39e02b4a3839c399 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/dns.o.d" -o ${OBJECTDIR}/_ext/1033058136/dns.o ../src/config/default/library/tcpip/src/dns.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/hash_fnv.o: ../src/config/default/library/tcpip/src/hash_fnv.c  .generated_files/flags/default/dedb82d060836ce7f027eaa9e66e0f497407609e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1033058136/hash_fnv.o ../src/config/default/library/tcpip/src/hash_fnv.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/oahash.o: ../src/config/default/library/tcpip/src/oahash.c  .generated_files/flags/default/f9a7fee57e4cc259055231a9fd9232c0d02101ee .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/oahash.o.d" -o ${OBJECTDIR}/_ext/1033058136/oahash.o ../src/config/default/library/tcpip/src/oahash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o: ../src/config/default/library/tcpip/src/tcpip_helpers.c  .generated_files/flags/default/4d25d45d4aa3a87242e02a42e5e8041d3ee9ee51 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o ../src/config/default/library/tcpip/src/tcpip_helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_manager.o: ../src/config/default/library/tcpip/src/tcpip_manager.c  .generated_files/flags/default/84f7f4e33e65221e70ac7240581236b30fdb67c .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o ../src/config/default/library/tcpip/src/tcpip_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_notify.o: ../src/config/default/library/tcpip/src/tcpip_notify.c  .generated_files/flags/default/6a877143026f90d8c31b5cccb71edbc9f3f41e65 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o ../src/config/default/library/tcpip/src/tcpip_notify.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_packet.o: ../src/config/default/library/tcpip/src/tcpip_packet.c  .generated_files/flags/default/da3a6e1277779682b733e41a642726681d09a48e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o ../src/config/default/library/tcpip/src/tcpip_packet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/sntp.o: ../src/config/default/library/tcpip/src/sntp.c  .generated_files/flags/default/2cc76ca134a8bb05331fd7ea739bb3b810660df8 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/sntp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/sntp.o.d" -o ${OBJECTDIR}/_ext/1033058136/sntp.o ../src/config/default/library/tcpip/src/sntp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/udp.o: ../src/config/default/library/tcpip/src/udp.c  .generated_files/flags/default/b730773d7c9ec5f9378e037f4600f32924ac08af .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/udp.o.d" -o ${OBJECTDIR}/_ext/1033058136/udp.o ../src/config/default/library/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/nbns.o: ../src/config/default/library/tcpip/src/nbns.c  .generated_files/flags/default/691b650a23d4ad893db72c6426183805398f82a2 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/nbns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/nbns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/nbns.o.d" -o ${OBJECTDIR}/_ext/1033058136/nbns.o ../src/config/default/library/tcpip/src/nbns.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_announce.o: ../src/config/default/library/tcpip/src/tcpip_announce.c  .generated_files/flags/default/8008cb2a6b1c0bf13bca2b37b328a68cfe3c6c5b .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_announce.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_announce.o ../src/config/default/library/tcpip/src/tcpip_announce.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/iperf.o: ../src/config/default/library/tcpip/src/iperf.c  .generated_files/flags/default/ad992ada2f97aa0f5c741b91ec991cfb2759f9ad .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/iperf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/iperf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/iperf.o.d" -o ${OBJECTDIR}/_ext/1033058136/iperf.o ../src/config/default/library/tcpip/src/iperf.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/telnet.o: ../src/config/default/library/tcpip/src/telnet.c  .generated_files/flags/default/bc5f7ec5b36b9b022106ba7ad6f54ddd93602b32 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/telnet.o.d" -o ${OBJECTDIR}/_ext/1033058136/telnet.o ../src/config/default/library/tcpip/src/telnet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1508031553/net_pres.o: ../src/config/default/net_pres/pres/src/net_pres.c  .generated_files/flags/default/eab63a2cf26da85306607e0f47ddacfa39edcae2 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1508031553" 
	@${RM} ${OBJECTDIR}/_ext/1508031553/net_pres.o.d 
	@${RM} ${OBJECTDIR}/_ext/1508031553/net_pres.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1508031553/net_pres.o.d" -o ${OBJECTDIR}/_ext/1508031553/net_pres.o ../src/config/default/net_pres/pres/src/net_pres.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o: ../src/config/default/net_pres/pres/net_pres_enc_glue.c  .generated_files/flags/default/69f769088c55fc1b82f4fc00d23bc897a5e3b87c .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1640433940" 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o.d" -o ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o ../src/config/default/net_pres/pres/net_pres_enc_glue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o: ../src/config/default/net_pres/pres/net_pres_cert_store.c  .generated_files/flags/default/88605762c3fb0992a7568991a093b43ea53e88b4 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1640433940" 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o.d" -o ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o ../src/config/default/net_pres/pres/net_pres_cert_store.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1984157808/plib_cache.o: ../src/config/default/peripheral/cache/plib_cache.c  .generated_files/flags/default/1ce3cde37a528a548f5ddf936dda0f2e458dff1a .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1984157808" 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984157808/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1984157808/plib_cache.o ../src/config/default/peripheral/cache/plib_cache.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/3f1a0e3e440d8d2901394f07f21ce33c247227fd .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/562a03c6a09a014280885dd9e5a7835e8ca8f364 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/8d81bec792668b232274d4efb36ee128666bbcac .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/6145f8198609f833af7108448b65312767c21a9a .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865585524/plib_rtcc.o: ../src/config/default/peripheral/rtcc/plib_rtcc.c  .generated_files/flags/default/432979fa0ea5d39400fa442ee6c5a3db6ba19c26 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1865585524" 
	@${RM} ${OBJECTDIR}/_ext/1865585524/plib_rtcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865585524/plib_rtcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865585524/plib_rtcc.o.d" -o ${OBJECTDIR}/_ext/1865585524/plib_rtcc.o ../src/config/default/peripheral/rtcc/plib_rtcc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart6.o: ../src/config/default/peripheral/uart/plib_uart6.c  .generated_files/flags/default/676dd01754f420d05b8af2f2cb1d6622be85383f .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ../src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/6125cdf76802785e6945640ac8a6026a98a3463f .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1014039709/sys_cache.o: ../src/config/default/system/cache/sys_cache.c  .generated_files/flags/default/990adcf724fa3e1a16dd883d48640f58c6f18f50 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1014039709" 
	@${RM} ${OBJECTDIR}/_ext/1014039709/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1014039709/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1014039709/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1014039709/sys_cache.o ../src/config/default/system/cache/sys_cache.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1376093119/sys_command.o: ../src/config/default/system/command/src/sys_command.c  .generated_files/flags/default/983a774c76f308eaf3ea322129951ce6e66368ff .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1376093119" 
	@${RM} ${OBJECTDIR}/_ext/1376093119/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1376093119/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1376093119/sys_command.o.d" -o ${OBJECTDIR}/_ext/1376093119/sys_command.o ../src/config/default/system/command/src/sys_command.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/flags/default/da4f1d2051544fd4c5b05a1eac9479af55447b82 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o: ../src/config/default/system/console/src/sys_console_usb_cdc.c  .generated_files/flags/default/387e4aacf6b8f1d2c70a4fa20dc4f6fdaed7ae9a .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o ../src/config/default/system/console/src/sys_console_usb_cdc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/944882569/sys_debug.o: ../src/config/default/system/debug/src/sys_debug.c  .generated_files/flags/default/fc573de6f3445c4342ba4fe3f61f23bf899eb983 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/944882569" 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/944882569/sys_debug.o.d" -o ${OBJECTDIR}/_ext/944882569/sys_debug.o ../src/config/default/system/debug/src/sys_debug.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/7d77f776335d433d8ffeaf5b4674b057aafbe8d2 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1000052432/sys_reset.o: ../src/config/default/system/reset/sys_reset.c  .generated_files/flags/default/4762d88d148e3a58dfa1df72b660edbffa08f9fa .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1000052432" 
	@${RM} ${OBJECTDIR}/_ext/1000052432/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1000052432/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1000052432/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1000052432/sys_reset.o ../src/config/default/system/reset/sys_reset.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/flags/default/612cb6a2d840caae0d86fd92608fea2a661d3118 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o: ../src/config/default/system/sys_time_h2_adapter.c  .generated_files/flags/default/68c86da1a99cf42c37222f66eefc86097bcdd7d3 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/753841488" 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o ../src/config/default/system/sys_time_h2_adapter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o: ../src/config/default/system/sys_random_h2_adapter.c  .generated_files/flags/default/4427374e2700aa8fb4221a4efd71f3466262ef8a .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/753841488" 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o ../src/config/default/system/sys_random_h2_adapter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2056773213/mqtt_net_glue.o: ../src/config/default/third_party_adapter/wolfMQTT/src/mqtt_net_glue.c  .generated_files/flags/default/1268602fec02fc2857f2d01a0df543320db14581 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2056773213" 
	@${RM} ${OBJECTDIR}/_ext/2056773213/mqtt_net_glue.o.d 
	@${RM} ${OBJECTDIR}/_ext/2056773213/mqtt_net_glue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2056773213/mqtt_net_glue.o.d" -o ${OBJECTDIR}/_ext/2056773213/mqtt_net_glue.o ../src/config/default/third_party_adapter/wolfMQTT/src/mqtt_net_glue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_device.o: ../src/config/default/usb/src/usb_device.c  .generated_files/flags/default/7071d331ece386ea5a6e3f569ebdfb2e84d2547f .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device.o ../src/config/default/usb/src/usb_device.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_device_cdc.o: ../src/config/default/usb/src/usb_device_cdc.c  .generated_files/flags/default/555ff06575344ae5cbdbbb93cee852a34d9e4d07 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device_cdc.o ../src/config/default/usb/src/usb_device_cdc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o: ../src/config/default/usb/src/usb_device_cdc_acm.c  .generated_files/flags/default/c0341ce3f4de83c3b94571379eed4db4b61175b5 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o ../src/config/default/usb/src/usb_device_cdc_acm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/622e481f0b618e6ce96c86db1d784a2df3e98770 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/5fe47a77290b5eeea1ea67abe0adb6b26aa8a69a .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/bd9b2ddf89e9f9e82485ab0faff99c6adcb0b49b .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/259fabfca214d5977307c8ad93eeb3759f9dbebc .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o: ../src/config/default/usb_device_init_data.c  .generated_files/flags/default/ed0944b008bfaac36bd815b8d121b8abd2be3e8e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ../src/config/default/usb_device_init_data.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/751086310/mqtt_client.o: ../src/third_party/wolfMQTT/src/mqtt_client.c  .generated_files/flags/default/51df9ee33910e6f6986ef220487fdfda5ae77197 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/751086310" 
	@${RM} ${OBJECTDIR}/_ext/751086310/mqtt_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/751086310/mqtt_client.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/751086310/mqtt_client.o.d" -o ${OBJECTDIR}/_ext/751086310/mqtt_client.o ../src/third_party/wolfMQTT/src/mqtt_client.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/751086310/mqtt_packet.o: ../src/third_party/wolfMQTT/src/mqtt_packet.c  .generated_files/flags/default/20811f9f63cf382da7f179447c8f301665f7249c .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/751086310" 
	@${RM} ${OBJECTDIR}/_ext/751086310/mqtt_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/751086310/mqtt_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/751086310/mqtt_packet.o.d" -o ${OBJECTDIR}/_ext/751086310/mqtt_packet.o ../src/third_party/wolfMQTT/src/mqtt_packet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/751086310/mqtt_socket.o: ../src/third_party/wolfMQTT/src/mqtt_socket.c  .generated_files/flags/default/361b4847224a19f31f67cdfcfc9cc2a7d495bd9f .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/751086310" 
	@${RM} ${OBJECTDIR}/_ext/751086310/mqtt_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/751086310/mqtt_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/751086310/mqtt_socket.o.d" -o ${OBJECTDIR}/_ext/751086310/mqtt_socket.o ../src/third_party/wolfMQTT/src/mqtt_socket.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c  .generated_files/flags/default/eb409e4eab0d49e6cdd5a583a90b296c449ceda3 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d" -o ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c  .generated_files/flags/default/a2c6a6effaef967fb6fce8f764f43e735cc1d191 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c  .generated_files/flags/default/f57665a6ed49ab819c8d7e106b653fc7b917392a .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c  .generated_files/flags/default/6f7a3cad0ac7326b9781cf3aae618ceda57f8ff8 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c  .generated_files/flags/default/ea2e3b22c471fe7531ceae8eb8fd26f14bd4ad82 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c  .generated_files/flags/default/543c4c252348524ef8925367347d44873cd61a .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c  .generated_files/flags/default/fcf0edf21f0e1364e89e955c0448d37ae24dde78 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c  .generated_files/flags/default/b0153adaa70d2ad2a36052f32432299702fe8a69 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c  .generated_files/flags/default/617d89b66eebf14f787f955a6355ae127a4ab2be .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c  .generated_files/flags/default/79bfb4fe5314ace3c424c5de880263383999eb35 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c  .generated_files/flags/default/70d6c5b53f94ffb3a58047371a395eaf16aa08b7 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c  .generated_files/flags/default/8a5ac6701bf6ea0964bee2721165d7f0665544fe .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c  .generated_files/flags/default/1dc3a6f509a22664f17dc93b4bc6992e40117ce2 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c  .generated_files/flags/default/203c5b5aeaf6041aa12592bdc71bc90670255ad3 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c  .generated_files/flags/default/ebd009e3f7f729bca0dbb4b79ac99c22b7c57ae4 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c  .generated_files/flags/default/a0f7aa158ed82490895ebda98ee1c6b54ecfd257 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c  .generated_files/flags/default/e853a05a0d6142700b5c1616828e0bc81463d4c4 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c  .generated_files/flags/default/e9a1daa4e6d8a7e7e06a1e4d54031f57c2dde6c5 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c  .generated_files/flags/default/dff1817d35c1c87100eac5eb718e43586a65318d .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c  .generated_files/flags/default/dcc98982e003cc5e136fca85879fd41395cb178e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/arc4.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c  .generated_files/flags/default/98b191a757ed62f1ab896a0cbd7cb32881eb0146 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/arc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/arc4.o.d" -o ${OBJECTDIR}/_ext/1664057780/arc4.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/asm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c  .generated_files/flags/default/f6a45c41cb1b9dc2f3a98b092542d45a000a20c8 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/asm.o.d" -o ${OBJECTDIR}/_ext/1664057780/asm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/asn.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c  .generated_files/flags/default/290febbed462967f295d61da389c7ea5b36a45e4 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/asn.o.d" -o ${OBJECTDIR}/_ext/1664057780/asn.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/blake2b.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c  .generated_files/flags/default/6b0a6c02e4df3e30f6fe5b48fa788e0a3378e5cb .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2b.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2b.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/blake2b.o.d" -o ${OBJECTDIR}/_ext/1664057780/blake2b.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/blake2s.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c  .generated_files/flags/default/9a0f23231a483d324ac6b881748e21eb75b2c2bd .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2s.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2s.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/blake2s.o.d" -o ${OBJECTDIR}/_ext/1664057780/blake2s.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/camellia.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c  .generated_files/flags/default/b7d5eba5d59c99a580eaefe9ddf6c648987410d0 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/camellia.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/camellia.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/camellia.o.d" -o ${OBJECTDIR}/_ext/1664057780/camellia.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/chacha.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c  .generated_files/flags/default/c5a19d23b6bdd0e5c45e6fc3b54761ab4ddd706 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/chacha.o.d" -o ${OBJECTDIR}/_ext/1664057780/chacha.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c  .generated_files/flags/default/ca130c926642adcc673e33f932f7885d23b36fe9 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d" -o ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cmac.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c  .generated_files/flags/default/16736a0f667da6b6bb6d1cd286313ef54a2b021b .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cmac.o.d" -o ${OBJECTDIR}/_ext/1664057780/cmac.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/coding.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c  .generated_files/flags/default/daa4b7cbb64bce00e66e4c6b4a2eb614a6dd509b .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/coding.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/coding.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/coding.o.d" -o ${OBJECTDIR}/_ext/1664057780/coding.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/compress.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c  .generated_files/flags/default/5240165c30047e33437a4fab23830102110f409c .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/compress.o.d" -o ${OBJECTDIR}/_ext/1664057780/compress.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cpuid.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c  .generated_files/flags/default/e1408b16fe2c42e1bbc8c6987b8bccc47f261490 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cpuid.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cpuid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cpuid.o.d" -o ${OBJECTDIR}/_ext/1664057780/cpuid.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cryptocb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c  .generated_files/flags/default/36b563ccc0a917b874307e733ef47c61249a4265 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cryptocb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cryptocb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cryptocb.o.d" -o ${OBJECTDIR}/_ext/1664057780/cryptocb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/curve25519.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c  .generated_files/flags/default/3c157a410e83a4da5b9ccc83ce66b2eb9a994ed0 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve25519.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/curve25519.o.d" -o ${OBJECTDIR}/_ext/1664057780/curve25519.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/curve448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c  .generated_files/flags/default/fd8f9b80cb03971362ebdd285a647d2a684bee87 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/curve448.o.d" -o ${OBJECTDIR}/_ext/1664057780/curve448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/dh.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c  .generated_files/flags/default/800b51ae3a2b5699a579555d5934adfd47d45952 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dh.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/dh.o.d" -o ${OBJECTDIR}/_ext/1664057780/dh.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/dsa.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c  .generated_files/flags/default/216dceeb4082006a920795c8f8e11336e4c0f479 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/dsa.o.d" -o ${OBJECTDIR}/_ext/1664057780/dsa.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ecc_fp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c  .generated_files/flags/default/fadf9c851c0da614a0daff9e42f7518445a26209 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc_fp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d" -o ${OBJECTDIR}/_ext/1664057780/ecc_fp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ed25519.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c  .generated_files/flags/default/2dbf99d164a0a572f6b8764c3f58c5d478c4b929 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed25519.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ed25519.o.d" -o ${OBJECTDIR}/_ext/1664057780/ed25519.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ed448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c  .generated_files/flags/default/1314c4eaf800414176936eb28bb6deff512890b .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ed448.o.d" -o ${OBJECTDIR}/_ext/1664057780/ed448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/error.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c  .generated_files/flags/default/9c4d60967d9f4772b57a524ff45d7e4da588b75e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/error.o.d" -o ${OBJECTDIR}/_ext/1664057780/error.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c  .generated_files/flags/default/f890e9363cfad6afceac51a559b2f7392ba33e41 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_448.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_low_mem.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c  .generated_files/flags/default/b3a27015f45b0fc74ec68d34160dccabf4b0e778 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_operations.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c  .generated_files/flags/default/aea84792ce67be1d057087e80d2d89aa293cf4c9 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_operations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_operations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_operations.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_operations.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c  .generated_files/flags/default/35cdc5023fb5f87209093f126179f41fc1db55d9 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_448.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_low_mem.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c  .generated_files/flags/default/ba182570e13b7d74ebfa386a548a99b8d51c0112 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_operations.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c  .generated_files/flags/default/32c16e435e2e9283b17f969bec3db6c0117bdd43 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_operations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_operations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_operations.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_operations.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hash.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c  .generated_files/flags/default/c87b1d4328053159d943d053fa80bb633fd4db4e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hash.o.d" -o ${OBJECTDIR}/_ext/1664057780/hash.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hc128.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c  .generated_files/flags/default/14476c3eb20ee8832c1572ca4c9731703df0d6d9 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hc128.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hc128.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hc128.o.d" -o ${OBJECTDIR}/_ext/1664057780/hc128.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hmac.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c  .generated_files/flags/default/2676362c5480c48ef1f6e2cfd044347b33b57a21 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hmac.o.d" -o ${OBJECTDIR}/_ext/1664057780/hmac.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/idea.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c  .generated_files/flags/default/d48574931f28571c5e6ea1e24fc991578c38f23 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/idea.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/idea.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/idea.o.d" -o ${OBJECTDIR}/_ext/1664057780/idea.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/integer.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c  .generated_files/flags/default/7cbee5217b369878e4b0477bc0f0aaf57b98f359 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/integer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/integer.o.d" -o ${OBJECTDIR}/_ext/1664057780/integer.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/logging.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c  .generated_files/flags/default/17f2c6db12abe0719019543adc3811195b4a5c8c .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/logging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/logging.o.d" -o ${OBJECTDIR}/_ext/1664057780/logging.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md2.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c  .generated_files/flags/default/8e43e10e83eea13d04f41c7b6bd50a4cb6f6786d .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md2.o.d" -o ${OBJECTDIR}/_ext/1664057780/md2.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md4.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c  .generated_files/flags/default/63f5f7f78774487b42d6822d5a7820f1ba41eb53 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md4.o.d" -o ${OBJECTDIR}/_ext/1664057780/md4.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md5.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c  .generated_files/flags/default/7552109697537ba18f404cfc1f378b1550ae1e4d .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md5.o.d" -o ${OBJECTDIR}/_ext/1664057780/md5.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/memory.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c  .generated_files/flags/default/ced96f06bc18c1cde08f01525cce3ff2a7f23475 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/memory.o.d" -o ${OBJECTDIR}/_ext/1664057780/memory.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pkcs12.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c  .generated_files/flags/default/966998ce775029b12ee3ea9c43150311d98e4bd2 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs12.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs12.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pkcs12.o.d" -o ${OBJECTDIR}/_ext/1664057780/pkcs12.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pkcs7.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c  .generated_files/flags/default/5412e6f3662929df157343099fda06a02ffd675b .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs7.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs7.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pkcs7.o.d" -o ${OBJECTDIR}/_ext/1664057780/pkcs7.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/poly1305.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c  .generated_files/flags/default/78e43fb67fad5e02572e5bc9da8383edcdfae848 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/poly1305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/poly1305.o.d" -o ${OBJECTDIR}/_ext/1664057780/poly1305.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pwdbased.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c  .generated_files/flags/default/e2676792265d31827b7cdea90c7fa5b20ee0817b .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pwdbased.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pwdbased.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pwdbased.o.d" -o ${OBJECTDIR}/_ext/1664057780/pwdbased.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rabbit.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c  .generated_files/flags/default/2e213bc98a6eb3fe060781cf033c47767bc184ae .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rabbit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rabbit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rabbit.o.d" -o ${OBJECTDIR}/_ext/1664057780/rabbit.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rc2.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c  .generated_files/flags/default/507d064fe11c3b4a5373616d380b8a9fc70d811e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rc2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rc2.o.d" -o ${OBJECTDIR}/_ext/1664057780/rc2.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ripemd.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c  .generated_files/flags/default/e8f1f74bc683e21dde0f972977ad8edac3be2ef8 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ripemd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ripemd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ripemd.o.d" -o ${OBJECTDIR}/_ext/1664057780/ripemd.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rsa.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c  .generated_files/flags/default/ac179cb5bce0cf9015b373809a67be931b50385a .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rsa.o.d" -o ${OBJECTDIR}/_ext/1664057780/rsa.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha3.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c  .generated_files/flags/default/f06ac8055888a261e90fc4b5f90055790a7e377f .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha3.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha3.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/signature.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c  .generated_files/flags/default/57415b34656480e378a2f704c84ba8a3a5c130f4 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/signature.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/signature.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/signature.o.d" -o ${OBJECTDIR}/_ext/1664057780/signature.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_arm32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c  .generated_files/flags/default/cb73aee4a80c103388d1e1eed10d3629b339b469 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_arm32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_arm64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c  .generated_files/flags/default/2a349e362f213fa8c3a1676429c5cce56c710388 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_arm64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_armthumb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c  .generated_files/flags/default/cb51b1277aea5c03fe04c4495b692d9bc3da6b80 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_c32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c  .generated_files/flags/default/822c2807c619fb5af4b9b30197e53be3f14ee0bb .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_c32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_c32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_c64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c  .generated_files/flags/default/402e1469c51e3220cc390d4edef024329caebd1e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_c64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_c64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_cortexm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c  .generated_files/flags/default/c20d2f5d42f294632d1d251a0a470841210e1cdd .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_dsp32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c  .generated_files/flags/default/aa63a805a02864032b887662e8e32baaf6d438f2 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_int.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c  .generated_files/flags/default/8c6ede0962a90f6e42715ed00da04b96953056bd .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_int.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_int.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_x86_64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c  .generated_files/flags/default/92c1c9b088b2c5bc2c5f5089677c509cb60dae9e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/srp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c  .generated_files/flags/default/6a5cf6827c21907b82c4bd95bce387f3fa7c2153 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/srp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/srp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/srp.o.d" -o ${OBJECTDIR}/_ext/1664057780/srp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/tfm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c  .generated_files/flags/default/7ca6ce018f6973039001c2115c807bd41854cc4a .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/tfm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/tfm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/tfm.o.d" -o ${OBJECTDIR}/_ext/1664057780/tfm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_dsp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c  .generated_files/flags/default/fc99392509d149358bd38137525cba3f71377542 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_dsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_dsp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_encrypt.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c  .generated_files/flags/default/22b22596bcafa0dcd1051ffba0139d5277d422e9 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c  .generated_files/flags/default/b94027a0e038ed3d3b4cfbbf1054f4b430f1432 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_port.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c  .generated_files/flags/default/6a0f0a61eafe993432a85c3d81b349fe2f562d76 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_port.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_port.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wolfevent.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c  .generated_files/flags/default/8be5b8a6884ed094690b975cc9d13468a223eab9 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfevent.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfevent.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wolfevent.o.d" -o ${OBJECTDIR}/_ext/1664057780/wolfevent.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wolfmath.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c  .generated_files/flags/default/d27311adc5d08c912d02a29e89d92b3e7b8e5c5f .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfmath.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfmath.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wolfmath.o.d" -o ${OBJECTDIR}/_ext/1664057780/wolfmath.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/aes.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c  .generated_files/flags/default/390bf652b7cf617013f29782635072bcdd9e27da .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/aes.o.d" -o ${OBJECTDIR}/_ext/1664057780/aes.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/des3.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c  .generated_files/flags/default/f30a3927a49b4f095ad92923d796a85714858a7a .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/des3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/des3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/des3.o.d" -o ${OBJECTDIR}/_ext/1664057780/des3.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/random.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c  .generated_files/flags/default/8fb73a6b7144d5d298a6bda13c15005cbaf0db9d .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/random.o.d" -o ${OBJECTDIR}/_ext/1664057780/random.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c  .generated_files/flags/default/98b920bb4d532c38209d3ca1301c9f924e52442d .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha256.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c  .generated_files/flags/default/f71177676bee240b98911d6312a1c3bf001be333 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha256.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha256.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha512.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c  .generated_files/flags/default/407735e43ed0b0cbd79c1ad3ff985460414f2970 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha512.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha512.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha512.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha512.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ecc.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c  .generated_files/flags/default/bddb8c2b4d3e3c81697a111f9066a66e9ac8fd69 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ecc.o.d" -o ${OBJECTDIR}/_ext/1664057780/ecc.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/crl.o: ../src/third_party/wolfssl/src/crl.c  .generated_files/flags/default/db13ff8dbb4d5fd72b46a84ff65361cad13e8aa4 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/crl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/crl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/crl.o.d" -o ${OBJECTDIR}/_ext/2046716756/crl.o ../src/third_party/wolfssl/src/crl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/keys.o: ../src/third_party/wolfssl/src/keys.c  .generated_files/flags/default/e2712d93ac5be1880e4ce213b4330b47d6415ddc .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/keys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/keys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/keys.o.d" -o ${OBJECTDIR}/_ext/2046716756/keys.o ../src/third_party/wolfssl/src/keys.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/ocsp.o: ../src/third_party/wolfssl/src/ocsp.c  .generated_files/flags/default/807dbfd11496055718e8c3737a279f42e631ae51 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ocsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ocsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/ocsp.o.d" -o ${OBJECTDIR}/_ext/2046716756/ocsp.o ../src/third_party/wolfssl/src/ocsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/sniffer.o: ../src/third_party/wolfssl/src/sniffer.c  .generated_files/flags/default/2da9155641ba440e4beedf3ff3c48d94b68a3359 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/sniffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/sniffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/sniffer.o.d" -o ${OBJECTDIR}/_ext/2046716756/sniffer.o ../src/third_party/wolfssl/src/sniffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/ssl.o: ../src/third_party/wolfssl/src/ssl.c  .generated_files/flags/default/733a818bb2e1dd35cc9d7a8e5376f010a310885d .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ssl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ssl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/ssl.o.d" -o ${OBJECTDIR}/_ext/2046716756/ssl.o ../src/third_party/wolfssl/src/ssl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/tls.o: ../src/third_party/wolfssl/src/tls.c  .generated_files/flags/default/629fe6fe42967b807f1a22c856bf3b33fda628e3 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/tls.o.d" -o ${OBJECTDIR}/_ext/2046716756/tls.o ../src/third_party/wolfssl/src/tls.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/tls13.o: ../src/third_party/wolfssl/src/tls13.c  .generated_files/flags/default/3508794adcb896432a524887759b59b588092d8a .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls13.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls13.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/tls13.o.d" -o ${OBJECTDIR}/_ext/2046716756/tls13.o ../src/third_party/wolfssl/src/tls13.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/wolfio.o: ../src/third_party/wolfssl/src/wolfio.c  .generated_files/flags/default/66877a5dd4c37e543037a68bcb7373dc26cbd6c8 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/wolfio.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/wolfio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/wolfio.o.d" -o ${OBJECTDIR}/_ext/2046716756/wolfio.o ../src/third_party/wolfssl/src/wolfio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/internal.o: ../src/third_party/wolfssl/src/internal.c  .generated_files/flags/default/a39817fd5b572756f5d10c91ec81564ed40bbd68 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/internal.o.d" -o ${OBJECTDIR}/_ext/2046716756/internal.o ../src/third_party/wolfssl/src/internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/87e8fdf3677a3777ee621b7e9eaabf2073c40e5f .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/dff6caf43d9b2956ebde1a2e8739b494c6574c4f .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_commands.o: ../src/app_commands.c  .generated_files/flags/default/499dc73d4a2d1ceb252c33552192eac2fa3a5afe .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_commands.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_commands.o ../src/app_commands.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_rtcc.o: ../src/app_rtcc.c  .generated_files/flags/default/4feecdde05fb1e3e11e6f6fb75e0b942f2c5fbe5 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_rtcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_rtcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_rtcc.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_rtcc.o ../src/app_rtcc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_mqtt_commands.o: ../src/app_mqtt_commands.c  .generated_files/flags/default/cb4baeb959c3b1496807004440dd4bbc3e906921 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mqtt_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mqtt_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_mqtt_commands.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_mqtt_commands.o ../src/app_mqtt_commands.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_mqtt_task.o: ../src/app_mqtt_task.c  .generated_files/flags/default/331f5352b2d13a1ce694cbeab81c225a21b6257e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mqtt_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mqtt_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_mqtt_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_mqtt_task.o ../src/app_mqtt_task.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/misc.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c  .generated_files/flags/default/2245bfc755c22ac310035639b39263ce0c21dbfa .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/misc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/misc.o.d" -o ${OBJECTDIR}/_ext/1664057780/misc.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/evp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c  .generated_files/flags/default/bbff2f2663e9ab7d1562055b4acf13803f3f7aa4 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/evp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/evp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/evp.o.d" -o ${OBJECTDIR}/_ext/1664057780/evp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  .generated_files/flags/default/22734dbea4ae7f1ce20572ccb3d0503d05c4b4ab .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1645245335/crypto.o: ../src/config/default/crypto/src/crypto.c  .generated_files/flags/default/ca03dc1f2901e125c3c7778634d860271341bc00 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1645245335" 
	@${RM} ${OBJECTDIR}/_ext/1645245335/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1645245335/crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1645245335/crypto.o.d" -o ${OBJECTDIR}/_ext/1645245335/crypto.o ../src/config/default/crypto/src/crypto.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732082881/drv_ethmac.o: ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/default/455e029df8d480a79bfe83da0b574b0bf654e8af .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/732082881" 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/732082881/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/732082881/drv_ethmac.o ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o: ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/default/b588ba219cf1d185472b3e1d57c5b5ae4f6fff49 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/732082881" 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o: ../src/config/default/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c  .generated_files/flags/default/ce98434d308be5ccaaaee8ba885c85659ee8083a .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/732082881" 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o.d" -o ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o ../src/config/default/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/444070925/drv_ethphy.o: ../src/config/default/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/default/f24ea850e9599117d5719a2c7c7723a9e87a2431 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/444070925" 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/444070925/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/444070925/drv_ethphy.o ../src/config/default/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/444070925/drv_extphy_ksz8061.o: ../src/config/default/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c  .generated_files/flags/default/5b957c24f9f781fbf9746265400d37bda79a284f .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/444070925" 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_extphy_ksz8061.o.d 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_extphy_ksz8061.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/444070925/drv_extphy_ksz8061.o.d" -o ${OBJECTDIR}/_ext/444070925/drv_extphy_ksz8061.o ../src/config/default/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/438849557/drv_miim.o: ../src/config/default/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/default/58f481aaf8ec38c01e5701809946da608a716581 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/438849557" 
	@${RM} ${OBJECTDIR}/_ext/438849557/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/438849557/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/438849557/drv_miim.o.d" -o ${OBJECTDIR}/_ext/438849557/drv_miim.o ../src/config/default/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2071311437/drv_usbhs.o: ../src/config/default/driver/usb/usbhs/src/drv_usbhs.c  .generated_files/flags/default/d9519310f1f676e4e419aa936aba3891c2e69481 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2071311437" 
	@${RM} ${OBJECTDIR}/_ext/2071311437/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2071311437/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2071311437/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/2071311437/drv_usbhs.o ../src/config/default/driver/usb/usbhs/src/drv_usbhs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o: ../src/config/default/driver/usb/usbhs/src/drv_usbhs_device.c  .generated_files/flags/default/d6aba1cab4ff529cdc7d3e01de9ea1cf272f46f9 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2071311437" 
	@${RM} ${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o ../src/config/default/driver/usb/usbhs/src/drv_usbhs_device.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/helpers.o: ../src/config/default/library/tcpip/src/helpers.c  .generated_files/flags/default/5d40b0824985eb3dc7b3fa24a9d63d688063b361 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/helpers.o.d" -o ${OBJECTDIR}/_ext/1033058136/helpers.o ../src/config/default/library/tcpip/src/helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/icmp.o: ../src/config/default/library/tcpip/src/icmp.c  .generated_files/flags/default/40a7a4c7aaecce155b6ba34d03a786d1d77c93c7 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/icmp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/icmp.o.d" -o ${OBJECTDIR}/_ext/1033058136/icmp.o ../src/config/default/library/tcpip/src/icmp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcp.o: ../src/config/default/library/tcpip/src/tcp.c  .generated_files/flags/default/23adadf062257a4b7b7b14e6c7b93b83b0ee46a0 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcp.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcp.o ../src/config/default/library/tcpip/src/tcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/arp.o: ../src/config/default/library/tcpip/src/arp.c  .generated_files/flags/default/bafe6de8cb6e68bd67e398323227903e0d81388a .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/arp.o.d" -o ${OBJECTDIR}/_ext/1033058136/arp.o ../src/config/default/library/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_commands.o: ../src/config/default/library/tcpip/src/tcpip_commands.c  .generated_files/flags/default/d723e10f7c8c5d825bdc2d9ac4dbbd1fe9d76e50 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_commands.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o ../src/config/default/library/tcpip/src/tcpip_commands.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/ipv4.o: ../src/config/default/library/tcpip/src/ipv4.c  .generated_files/flags/default/50531067104d37d312db2922b064043a5ac304f0 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/ipv4.o.d" -o ${OBJECTDIR}/_ext/1033058136/ipv4.o ../src/config/default/library/tcpip/src/ipv4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o: ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/default/6f4c337a4d2268a2de5bb0639a7adc9c7d050c57 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o: ../src/config/default/library/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/default/37cb14a4773a18aee1155a5c50c675e5d457b81e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o ../src/config/default/library/tcpip/src/tcpip_heap_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/dhcp.o: ../src/config/default/library/tcpip/src/dhcp.c  .generated_files/flags/default/88d660b2b63c7f55b3da1d21a8ec55c0a2ba52cd .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/dhcp.o.d" -o ${OBJECTDIR}/_ext/1033058136/dhcp.o ../src/config/default/library/tcpip/src/dhcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/dns.o: ../src/config/default/library/tcpip/src/dns.c  .generated_files/flags/default/29ed40da3922dd2f1e6637cbe1add335f5dcd5c4 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/dns.o.d" -o ${OBJECTDIR}/_ext/1033058136/dns.o ../src/config/default/library/tcpip/src/dns.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/hash_fnv.o: ../src/config/default/library/tcpip/src/hash_fnv.c  .generated_files/flags/default/d195ea34b4a66586d703fb92de2ae0633ec5602b .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1033058136/hash_fnv.o ../src/config/default/library/tcpip/src/hash_fnv.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/oahash.o: ../src/config/default/library/tcpip/src/oahash.c  .generated_files/flags/default/77ab729ec278873706144303f750a1fcd2142684 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/oahash.o.d" -o ${OBJECTDIR}/_ext/1033058136/oahash.o ../src/config/default/library/tcpip/src/oahash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o: ../src/config/default/library/tcpip/src/tcpip_helpers.c  .generated_files/flags/default/8a2f3d93ae8924e20f37ef7641edb720ab78aa9b .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o ../src/config/default/library/tcpip/src/tcpip_helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_manager.o: ../src/config/default/library/tcpip/src/tcpip_manager.c  .generated_files/flags/default/95d89208830649dc3c7bbc823905a43030c9f2f3 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o ../src/config/default/library/tcpip/src/tcpip_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_notify.o: ../src/config/default/library/tcpip/src/tcpip_notify.c  .generated_files/flags/default/475fe1816962ff9f0b44fb6b7d5afe8d75c1729 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o ../src/config/default/library/tcpip/src/tcpip_notify.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_packet.o: ../src/config/default/library/tcpip/src/tcpip_packet.c  .generated_files/flags/default/9beef4e5451884d04e2dba43c305744c97e78f7f .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o ../src/config/default/library/tcpip/src/tcpip_packet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/sntp.o: ../src/config/default/library/tcpip/src/sntp.c  .generated_files/flags/default/631b51043fd29fd68f870875e4f60997e4f6b3a5 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/sntp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/sntp.o.d" -o ${OBJECTDIR}/_ext/1033058136/sntp.o ../src/config/default/library/tcpip/src/sntp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/udp.o: ../src/config/default/library/tcpip/src/udp.c  .generated_files/flags/default/f695baca5ad87a6c3cb488ad935d8f367982e8bb .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/udp.o.d" -o ${OBJECTDIR}/_ext/1033058136/udp.o ../src/config/default/library/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/nbns.o: ../src/config/default/library/tcpip/src/nbns.c  .generated_files/flags/default/67ae6f1c830d7ccbd2e6d043a373a9893ed89a61 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/nbns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/nbns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/nbns.o.d" -o ${OBJECTDIR}/_ext/1033058136/nbns.o ../src/config/default/library/tcpip/src/nbns.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_announce.o: ../src/config/default/library/tcpip/src/tcpip_announce.c  .generated_files/flags/default/14978e25979096fdf421a113cc0999ae3e347d4e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_announce.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_announce.o ../src/config/default/library/tcpip/src/tcpip_announce.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/iperf.o: ../src/config/default/library/tcpip/src/iperf.c  .generated_files/flags/default/f140f88ea1a536c92ae082b89100187ee7ff33e6 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/iperf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/iperf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/iperf.o.d" -o ${OBJECTDIR}/_ext/1033058136/iperf.o ../src/config/default/library/tcpip/src/iperf.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/telnet.o: ../src/config/default/library/tcpip/src/telnet.c  .generated_files/flags/default/46cff97bb5e788d609c5dc6e71efd0c4991230da .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/telnet.o.d" -o ${OBJECTDIR}/_ext/1033058136/telnet.o ../src/config/default/library/tcpip/src/telnet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1508031553/net_pres.o: ../src/config/default/net_pres/pres/src/net_pres.c  .generated_files/flags/default/bb0315ea9991e9c0255d54e9e2276641bbe02604 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1508031553" 
	@${RM} ${OBJECTDIR}/_ext/1508031553/net_pres.o.d 
	@${RM} ${OBJECTDIR}/_ext/1508031553/net_pres.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1508031553/net_pres.o.d" -o ${OBJECTDIR}/_ext/1508031553/net_pres.o ../src/config/default/net_pres/pres/src/net_pres.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o: ../src/config/default/net_pres/pres/net_pres_enc_glue.c  .generated_files/flags/default/dd1fe2858dcf0a117a5217276de5df5d81ad0a2f .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1640433940" 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o.d" -o ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o ../src/config/default/net_pres/pres/net_pres_enc_glue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o: ../src/config/default/net_pres/pres/net_pres_cert_store.c  .generated_files/flags/default/f4e2d66fcc4ef9257c0a902197b8bcb726566049 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1640433940" 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o.d" -o ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o ../src/config/default/net_pres/pres/net_pres_cert_store.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1984157808/plib_cache.o: ../src/config/default/peripheral/cache/plib_cache.c  .generated_files/flags/default/f7fb3d515a4a69914f8ade841e06524e849bb781 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1984157808" 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984157808/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1984157808/plib_cache.o ../src/config/default/peripheral/cache/plib_cache.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/58b2dcb4ff35c9e10346028447656d5514654149 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/459c440b538548236cce1806f2490dd6c8e2717d .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/f6e5b42917498cfd2be52e5504f3874300e17d8e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/e1b614dde6bce7e120072afb979d72777257bf9c .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865585524/plib_rtcc.o: ../src/config/default/peripheral/rtcc/plib_rtcc.c  .generated_files/flags/default/72debc1e4c769107dc1ba95de7cb20e27b8a4df4 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1865585524" 
	@${RM} ${OBJECTDIR}/_ext/1865585524/plib_rtcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865585524/plib_rtcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865585524/plib_rtcc.o.d" -o ${OBJECTDIR}/_ext/1865585524/plib_rtcc.o ../src/config/default/peripheral/rtcc/plib_rtcc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart6.o: ../src/config/default/peripheral/uart/plib_uart6.c  .generated_files/flags/default/267067688f816b3586fc3a1b2dcb68f20d3ff5ee .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ../src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/df9260e6e7007139b3da93be14c8279d9ec4ddef .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1014039709/sys_cache.o: ../src/config/default/system/cache/sys_cache.c  .generated_files/flags/default/8a976599338c3317244745ca7f535bcff78ea8f7 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1014039709" 
	@${RM} ${OBJECTDIR}/_ext/1014039709/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1014039709/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1014039709/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1014039709/sys_cache.o ../src/config/default/system/cache/sys_cache.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1376093119/sys_command.o: ../src/config/default/system/command/src/sys_command.c  .generated_files/flags/default/22c5a0284d3f202e99182c3abc088dd62b87f408 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1376093119" 
	@${RM} ${OBJECTDIR}/_ext/1376093119/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1376093119/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1376093119/sys_command.o.d" -o ${OBJECTDIR}/_ext/1376093119/sys_command.o ../src/config/default/system/command/src/sys_command.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/flags/default/ed25e9664174ba02a1bcd9b7d57658aa1a09945b .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o: ../src/config/default/system/console/src/sys_console_usb_cdc.c  .generated_files/flags/default/410fea8a17c861e4255bee55e936f01c519aa3fa .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o ../src/config/default/system/console/src/sys_console_usb_cdc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/944882569/sys_debug.o: ../src/config/default/system/debug/src/sys_debug.c  .generated_files/flags/default/52a65dfc85ccb8558c67002063d2d43f6c3c5781 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/944882569" 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/944882569/sys_debug.o.d" -o ${OBJECTDIR}/_ext/944882569/sys_debug.o ../src/config/default/system/debug/src/sys_debug.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/4225a59922ca2591793b76ca7a66af655140f6e1 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1000052432/sys_reset.o: ../src/config/default/system/reset/sys_reset.c  .generated_files/flags/default/14b8ccca654d446e98fb6c0b06ea2039ac6046e4 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1000052432" 
	@${RM} ${OBJECTDIR}/_ext/1000052432/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1000052432/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1000052432/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1000052432/sys_reset.o ../src/config/default/system/reset/sys_reset.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/flags/default/d66aebf39d0db9d9f29a14ee5c5c629a460715b5 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o: ../src/config/default/system/sys_time_h2_adapter.c  .generated_files/flags/default/492cdafe9966a95c7be7c67989d55c53ae9912d5 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/753841488" 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o ../src/config/default/system/sys_time_h2_adapter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o: ../src/config/default/system/sys_random_h2_adapter.c  .generated_files/flags/default/7bb187b8e9e614bfb116311bf6b56098c7bae9c6 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/753841488" 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o ../src/config/default/system/sys_random_h2_adapter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2056773213/mqtt_net_glue.o: ../src/config/default/third_party_adapter/wolfMQTT/src/mqtt_net_glue.c  .generated_files/flags/default/5263736a58b701a50496191bfbaa15c970219911 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2056773213" 
	@${RM} ${OBJECTDIR}/_ext/2056773213/mqtt_net_glue.o.d 
	@${RM} ${OBJECTDIR}/_ext/2056773213/mqtt_net_glue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2056773213/mqtt_net_glue.o.d" -o ${OBJECTDIR}/_ext/2056773213/mqtt_net_glue.o ../src/config/default/third_party_adapter/wolfMQTT/src/mqtt_net_glue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_device.o: ../src/config/default/usb/src/usb_device.c  .generated_files/flags/default/456082357de193fa8ee8b3219e1edbd96ca69c96 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device.o ../src/config/default/usb/src/usb_device.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_device_cdc.o: ../src/config/default/usb/src/usb_device_cdc.c  .generated_files/flags/default/940df029e33631933469e3ddac802ceef16e4ce0 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device_cdc.o ../src/config/default/usb/src/usb_device_cdc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o: ../src/config/default/usb/src/usb_device_cdc_acm.c  .generated_files/flags/default/5e3f48d0e41698b96c1159dc881c8b2f8716c234 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o ../src/config/default/usb/src/usb_device_cdc_acm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/b1a64f91bcd35ce60ffbad990bd62ff832611305 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/b97459f67cb62a063eba4a2400dd0644ba116962 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/111050353403aec4faf97676413f83ce9c52f9a3 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/5d3cd66fdd331e0ca0b11950b3afd09047c8a7fc .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o: ../src/config/default/usb_device_init_data.c  .generated_files/flags/default/236cbb9cc78954a8fde91ddfab485019950e94a3 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ../src/config/default/usb_device_init_data.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/751086310/mqtt_client.o: ../src/third_party/wolfMQTT/src/mqtt_client.c  .generated_files/flags/default/251f0dd934b799d93c5909abcbb55546d09f9397 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/751086310" 
	@${RM} ${OBJECTDIR}/_ext/751086310/mqtt_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/751086310/mqtt_client.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/751086310/mqtt_client.o.d" -o ${OBJECTDIR}/_ext/751086310/mqtt_client.o ../src/third_party/wolfMQTT/src/mqtt_client.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/751086310/mqtt_packet.o: ../src/third_party/wolfMQTT/src/mqtt_packet.c  .generated_files/flags/default/c5990512393bd9e9854cf8cde1526adf0a83390b .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/751086310" 
	@${RM} ${OBJECTDIR}/_ext/751086310/mqtt_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/751086310/mqtt_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/751086310/mqtt_packet.o.d" -o ${OBJECTDIR}/_ext/751086310/mqtt_packet.o ../src/third_party/wolfMQTT/src/mqtt_packet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/751086310/mqtt_socket.o: ../src/third_party/wolfMQTT/src/mqtt_socket.c  .generated_files/flags/default/235da0260efd254d1363c3aacd4e7ad9bfab60cb .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/751086310" 
	@${RM} ${OBJECTDIR}/_ext/751086310/mqtt_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/751086310/mqtt_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/751086310/mqtt_socket.o.d" -o ${OBJECTDIR}/_ext/751086310/mqtt_socket.o ../src/third_party/wolfMQTT/src/mqtt_socket.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c  .generated_files/flags/default/364460e02e7effe59ac50929ad1c39588f4d2069 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d" -o ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c  .generated_files/flags/default/339f0505be9b689d6dbc9a49342a49062c663699 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c  .generated_files/flags/default/99beb00c9a50868f09a5532a9a99160bbc62d66c .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c  .generated_files/flags/default/465d7c1c00cd67921d11da39feab238e699d8fda .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c  .generated_files/flags/default/2acd40b743400d97f035cf53ce6586020b756279 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c  .generated_files/flags/default/443e6462be0645780f0e19454a3b7f0a4c1abd77 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c  .generated_files/flags/default/6daa4b3b26081e1ec12550774d9c5c4b1c4c40b0 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c  .generated_files/flags/default/b59517bc233c39899066da34f0f66dce338e690f .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c  .generated_files/flags/default/456755880eb95921f55e2b2e401f07c72f8f378e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c  .generated_files/flags/default/dff0623ea73230713de6fd734166508fc936c7b6 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c  .generated_files/flags/default/2ca20d57df532dd655dbe02fcd0e58f36ff885d1 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c  .generated_files/flags/default/4b29129cda1721130954ed59e6207790343072ee .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c  .generated_files/flags/default/cfe9f3d804e2e1522c3ce6c53ae1c15c9272f6ae .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c  .generated_files/flags/default/dd5ecd9f82addae4a2525e4fc80e6bbe8253880a .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c  .generated_files/flags/default/f0ce318dda214c2a67a24e84276b46c231d8037e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c  .generated_files/flags/default/12baddafcb05ce08b2c8dc328e53ee1708c0da2c .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c  .generated_files/flags/default/dc27740e00697a478331cebe8e6adc79d901b994 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c  .generated_files/flags/default/b4716d5e191c4fe7bde05eaf67d91b2e08b5bd26 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c  .generated_files/flags/default/e90faecc2342f92c705936637a06829e12865ba .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c  .generated_files/flags/default/d8a74ff8a11e95869c891ec1db343745a1e47bd .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/arc4.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c  .generated_files/flags/default/94c417303c14803f5a768633100128be395caa35 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/arc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/arc4.o.d" -o ${OBJECTDIR}/_ext/1664057780/arc4.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/asm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c  .generated_files/flags/default/4cfc1f294f2dc3d92852a1d9f860975541acc395 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/asm.o.d" -o ${OBJECTDIR}/_ext/1664057780/asm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/asn.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c  .generated_files/flags/default/e7e2fabf5b583c036a9678df9dd0c852fbbd09e7 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/asn.o.d" -o ${OBJECTDIR}/_ext/1664057780/asn.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/blake2b.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c  .generated_files/flags/default/e2ade03dafca947d81c95031542824006e90d9ea .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2b.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2b.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/blake2b.o.d" -o ${OBJECTDIR}/_ext/1664057780/blake2b.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/blake2s.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c  .generated_files/flags/default/3adc63f1d3944585f91bb0ea62d36b123c2557fd .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2s.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2s.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/blake2s.o.d" -o ${OBJECTDIR}/_ext/1664057780/blake2s.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/camellia.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c  .generated_files/flags/default/3b396a9972e04ff13c94627272bdfa8ca73ce4f7 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/camellia.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/camellia.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/camellia.o.d" -o ${OBJECTDIR}/_ext/1664057780/camellia.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/chacha.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c  .generated_files/flags/default/4f53fe4ea4e37fb7e251316de38f36427a708100 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/chacha.o.d" -o ${OBJECTDIR}/_ext/1664057780/chacha.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c  .generated_files/flags/default/cf803d2483b9c3006a84c63f5c8b2d2f2f2b68b8 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d" -o ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cmac.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c  .generated_files/flags/default/8c55a50d48c00103340951f5a902db465e09c625 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cmac.o.d" -o ${OBJECTDIR}/_ext/1664057780/cmac.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/coding.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c  .generated_files/flags/default/1faf96b86febe01ad9fc3c21722b131dd53cc268 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/coding.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/coding.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/coding.o.d" -o ${OBJECTDIR}/_ext/1664057780/coding.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/compress.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c  .generated_files/flags/default/583a255e0dedd16d6a9e87d0811b50fa78f665e6 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/compress.o.d" -o ${OBJECTDIR}/_ext/1664057780/compress.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cpuid.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c  .generated_files/flags/default/691302dcaf66d085f08cc7205fc69feab3520994 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cpuid.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cpuid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cpuid.o.d" -o ${OBJECTDIR}/_ext/1664057780/cpuid.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cryptocb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c  .generated_files/flags/default/fc3fb57a78c0a53666f1d2a8eefe9c4aec8c92c5 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cryptocb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cryptocb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cryptocb.o.d" -o ${OBJECTDIR}/_ext/1664057780/cryptocb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/curve25519.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c  .generated_files/flags/default/c54d83e695d162d4085661410c8696af1dad609e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve25519.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/curve25519.o.d" -o ${OBJECTDIR}/_ext/1664057780/curve25519.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/curve448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c  .generated_files/flags/default/2821f0e476b61138d79bcb314a227a91f7785365 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/curve448.o.d" -o ${OBJECTDIR}/_ext/1664057780/curve448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/dh.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c  .generated_files/flags/default/82cc55402056209011a7854a7b4b8eca052dc014 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dh.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/dh.o.d" -o ${OBJECTDIR}/_ext/1664057780/dh.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/dsa.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c  .generated_files/flags/default/3801c9a671c408f95cb8b176af7de6a512bfa190 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/dsa.o.d" -o ${OBJECTDIR}/_ext/1664057780/dsa.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ecc_fp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c  .generated_files/flags/default/ca685094158d1d231995ab086f33d71210f9340 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc_fp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d" -o ${OBJECTDIR}/_ext/1664057780/ecc_fp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ed25519.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c  .generated_files/flags/default/da5c9a43a7f44d60302709096a369dee010b58d .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed25519.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ed25519.o.d" -o ${OBJECTDIR}/_ext/1664057780/ed25519.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ed448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c  .generated_files/flags/default/71b5214b5987063b5e14f9b7086483e5d6e996e7 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ed448.o.d" -o ${OBJECTDIR}/_ext/1664057780/ed448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/error.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c  .generated_files/flags/default/474003fc232f29e14c916be49f561ebd1a22cae2 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/error.o.d" -o ${OBJECTDIR}/_ext/1664057780/error.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c  .generated_files/flags/default/65de214cc4b6eca401c66faf9ac1e495ac2f85fd .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_448.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_low_mem.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c  .generated_files/flags/default/d0179bd4eb32ab2a6bb84d5e40acd184075795a7 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_operations.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c  .generated_files/flags/default/e9bc7ca92a46a9ab0f11804e22b1478c6d80faf6 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_operations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_operations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_operations.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_operations.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c  .generated_files/flags/default/4ad990b78376cd4d7a9f6d7c1c67e007471cde00 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_448.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_low_mem.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c  .generated_files/flags/default/fba48f6f4b93193620b17c8360239888d5e05529 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_operations.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c  .generated_files/flags/default/b07916b5b02d596c22a0a07b56927317b837ba42 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_operations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_operations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_operations.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_operations.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hash.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c  .generated_files/flags/default/62722ecf2abeb53088532e6d070d80f91c9a3305 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hash.o.d" -o ${OBJECTDIR}/_ext/1664057780/hash.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hc128.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c  .generated_files/flags/default/9a609a41ae1cf0af9dd542c9da013367b2296c28 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hc128.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hc128.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hc128.o.d" -o ${OBJECTDIR}/_ext/1664057780/hc128.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hmac.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c  .generated_files/flags/default/34f913e04106435e6c8a2c69bc6116971fed893a .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hmac.o.d" -o ${OBJECTDIR}/_ext/1664057780/hmac.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/idea.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c  .generated_files/flags/default/a36df80b1fb832d230bdac49b695c5b6f418bb6f .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/idea.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/idea.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/idea.o.d" -o ${OBJECTDIR}/_ext/1664057780/idea.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/integer.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c  .generated_files/flags/default/cb81dd1381231447e5392c76aa5345490ada09ab .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/integer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/integer.o.d" -o ${OBJECTDIR}/_ext/1664057780/integer.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/logging.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c  .generated_files/flags/default/3d426496fc57276c6b4fc5b39fc9336b4c319e04 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/logging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/logging.o.d" -o ${OBJECTDIR}/_ext/1664057780/logging.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md2.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c  .generated_files/flags/default/262585d635def074df837341b8de699815f40a5e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md2.o.d" -o ${OBJECTDIR}/_ext/1664057780/md2.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md4.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c  .generated_files/flags/default/d4e9e9e53257498c33d72f5bfd3366b9b98dbf43 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md4.o.d" -o ${OBJECTDIR}/_ext/1664057780/md4.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md5.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c  .generated_files/flags/default/31c93287452129cec4e7fed3b70346ded6dcea2c .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md5.o.d" -o ${OBJECTDIR}/_ext/1664057780/md5.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/memory.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c  .generated_files/flags/default/182a9866a23d8a2dbf0462eaef9769b54d5a40e5 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/memory.o.d" -o ${OBJECTDIR}/_ext/1664057780/memory.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pkcs12.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c  .generated_files/flags/default/9c87a9eebcf56c9631a5537fb71465b5714af2cf .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs12.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs12.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pkcs12.o.d" -o ${OBJECTDIR}/_ext/1664057780/pkcs12.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pkcs7.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c  .generated_files/flags/default/8f4c16db7e5e8091abccff58f4a3fb793ceec451 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs7.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs7.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pkcs7.o.d" -o ${OBJECTDIR}/_ext/1664057780/pkcs7.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/poly1305.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c  .generated_files/flags/default/3bb0ac78078d2ee04eab5381362568761b5a115 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/poly1305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/poly1305.o.d" -o ${OBJECTDIR}/_ext/1664057780/poly1305.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pwdbased.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c  .generated_files/flags/default/da9cfa9e6a4cf8e28055f0fa35738e3548eef23a .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pwdbased.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pwdbased.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pwdbased.o.d" -o ${OBJECTDIR}/_ext/1664057780/pwdbased.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rabbit.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c  .generated_files/flags/default/5cdfec6c4af0d0c117722b8de9c7bf3d6fb8e24d .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rabbit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rabbit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rabbit.o.d" -o ${OBJECTDIR}/_ext/1664057780/rabbit.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rc2.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c  .generated_files/flags/default/3ef6da0cba96c5730397314d706bfed0f1a99f8b .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rc2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rc2.o.d" -o ${OBJECTDIR}/_ext/1664057780/rc2.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ripemd.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c  .generated_files/flags/default/3c985219c2dbbe72fc81ae382b7cb2489b8b30e2 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ripemd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ripemd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ripemd.o.d" -o ${OBJECTDIR}/_ext/1664057780/ripemd.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rsa.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c  .generated_files/flags/default/8fde869ad9fccb76adc8b496ac683da379e912f7 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rsa.o.d" -o ${OBJECTDIR}/_ext/1664057780/rsa.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha3.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c  .generated_files/flags/default/30b6daed380670d8e9cfe693c27c61be48508b5f .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha3.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha3.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/signature.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c  .generated_files/flags/default/a16fd6f6fae24a600e177b7d7183575cbbde653e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/signature.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/signature.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/signature.o.d" -o ${OBJECTDIR}/_ext/1664057780/signature.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_arm32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c  .generated_files/flags/default/f8371d94e509c0fdfea5ffbd33f928621573e06e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_arm32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_arm64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c  .generated_files/flags/default/fdb9e5f7797d04b47326dedc823d5bd2e52c8053 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_arm64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_armthumb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c  .generated_files/flags/default/5af4ce612ce8404639543319d4d8c003fc9af2ae .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_c32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c  .generated_files/flags/default/de8d5a9fef6dfa4670525caa46f37bb413d77086 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_c32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_c32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_c64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c  .generated_files/flags/default/e332d14be87b75e6c198b236c1165d1d44a7c38c .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_c64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_c64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_cortexm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c  .generated_files/flags/default/75b9be4fcb9b72d5a938cb1331a56ee4db83e8f .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_dsp32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c  .generated_files/flags/default/5a49efc462a042df58e92d219bc1aa99f8a33cd8 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_int.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c  .generated_files/flags/default/7ff441a62360a7e949ba16d968f27f29d4908e06 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_int.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_int.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_x86_64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c  .generated_files/flags/default/3ee6dfa4e66fa20fe344c9a9fcf244c3b5796b65 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/srp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c  .generated_files/flags/default/50ae93e059d5d6d9b84a00cb66ea12bfb12af968 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/srp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/srp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/srp.o.d" -o ${OBJECTDIR}/_ext/1664057780/srp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/tfm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c  .generated_files/flags/default/fa412069cc042709ad39fd952cc3be074f06e29c .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/tfm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/tfm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/tfm.o.d" -o ${OBJECTDIR}/_ext/1664057780/tfm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_dsp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c  .generated_files/flags/default/39216fb4e75063f9edfafbf36fd6896aeda247d5 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_dsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_dsp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_encrypt.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c  .generated_files/flags/default/37633fb994ab5bdaad1560edd3feb878b263f603 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c  .generated_files/flags/default/6ee8d9303a05cdf797f533d5e9ece97663d133c0 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_port.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c  .generated_files/flags/default/b1f263265963e766c8b9ff2bf595791b8d971809 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_port.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_port.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wolfevent.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c  .generated_files/flags/default/1370bb615722c1ad9d12c8134cb68ab4136b57f4 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfevent.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfevent.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wolfevent.o.d" -o ${OBJECTDIR}/_ext/1664057780/wolfevent.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wolfmath.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c  .generated_files/flags/default/f062a04434e0b71cdc11fb887130de1338f21a89 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfmath.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfmath.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wolfmath.o.d" -o ${OBJECTDIR}/_ext/1664057780/wolfmath.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/aes.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c  .generated_files/flags/default/3b55fd67588605e5b6fcb07ec1c34416c10b4d94 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/aes.o.d" -o ${OBJECTDIR}/_ext/1664057780/aes.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/des3.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c  .generated_files/flags/default/a9505f2cfbf3ca28917478cd7ebeb214161480b1 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/des3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/des3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/des3.o.d" -o ${OBJECTDIR}/_ext/1664057780/des3.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/random.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c  .generated_files/flags/default/76e900e4ef7be546af3b3ea89add81d5e0993724 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/random.o.d" -o ${OBJECTDIR}/_ext/1664057780/random.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c  .generated_files/flags/default/d0c9b0ea83114b5d7e6e157fb2559f919420bf74 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha256.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c  .generated_files/flags/default/efd464f354e0eb137b78644fdcd8bfa9c60b8ad4 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha256.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha256.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha512.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c  .generated_files/flags/default/53b85c8741f0930c77d883d0c10b453ef779bb88 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha512.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha512.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha512.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha512.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ecc.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c  .generated_files/flags/default/df50249f18ac29a2c928035c1bb73b68a8c7efba .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ecc.o.d" -o ${OBJECTDIR}/_ext/1664057780/ecc.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/crl.o: ../src/third_party/wolfssl/src/crl.c  .generated_files/flags/default/11681838f4127cfb34bf6127ff3e88df5f228c7c .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/crl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/crl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/crl.o.d" -o ${OBJECTDIR}/_ext/2046716756/crl.o ../src/third_party/wolfssl/src/crl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/keys.o: ../src/third_party/wolfssl/src/keys.c  .generated_files/flags/default/89c992635a6dd53745789c28838855a1e4084e80 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/keys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/keys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/keys.o.d" -o ${OBJECTDIR}/_ext/2046716756/keys.o ../src/third_party/wolfssl/src/keys.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/ocsp.o: ../src/third_party/wolfssl/src/ocsp.c  .generated_files/flags/default/fbb3f37f54c4c336702af91014b049ddfd4f1f99 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ocsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ocsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/ocsp.o.d" -o ${OBJECTDIR}/_ext/2046716756/ocsp.o ../src/third_party/wolfssl/src/ocsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/sniffer.o: ../src/third_party/wolfssl/src/sniffer.c  .generated_files/flags/default/1ff62b81970f2f993b32b1bf81b81a2b659b5202 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/sniffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/sniffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/sniffer.o.d" -o ${OBJECTDIR}/_ext/2046716756/sniffer.o ../src/third_party/wolfssl/src/sniffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/ssl.o: ../src/third_party/wolfssl/src/ssl.c  .generated_files/flags/default/bdc4bce7e28de2b9a7396c2eca73698a9069da54 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ssl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ssl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/ssl.o.d" -o ${OBJECTDIR}/_ext/2046716756/ssl.o ../src/third_party/wolfssl/src/ssl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/tls.o: ../src/third_party/wolfssl/src/tls.c  .generated_files/flags/default/ea7a3823afae9b1374421b9971ded978a9ed6523 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/tls.o.d" -o ${OBJECTDIR}/_ext/2046716756/tls.o ../src/third_party/wolfssl/src/tls.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/tls13.o: ../src/third_party/wolfssl/src/tls13.c  .generated_files/flags/default/eb0a05725dbb9d34c2e945ca10eef6872be57f7c .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls13.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls13.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/tls13.o.d" -o ${OBJECTDIR}/_ext/2046716756/tls13.o ../src/third_party/wolfssl/src/tls13.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/wolfio.o: ../src/third_party/wolfssl/src/wolfio.c  .generated_files/flags/default/fe1f1d7ea88e29446fef9603c46be70d3d7d3a2b .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/wolfio.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/wolfio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/wolfio.o.d" -o ${OBJECTDIR}/_ext/2046716756/wolfio.o ../src/third_party/wolfssl/src/wolfio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/internal.o: ../src/third_party/wolfssl/src/internal.c  .generated_files/flags/default/95abe6516d0001104b141d959e187b168d9bca2 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/internal.o.d" -o ${OBJECTDIR}/_ext/2046716756/internal.o ../src/third_party/wolfssl/src/internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/9ba269b99b7ae4bca815adb0cc2ac164208268f2 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/4133e682f7e37de8d8cda29dae36be7fef599612 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_commands.o: ../src/app_commands.c  .generated_files/flags/default/d5488f32802c23725969dfc9c9c3c8a3c11ddc9e .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_commands.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_commands.o ../src/app_commands.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_rtcc.o: ../src/app_rtcc.c  .generated_files/flags/default/35dd1e2985840339d5055f8c09d00db2848f72f2 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_rtcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_rtcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_rtcc.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_rtcc.o ../src/app_rtcc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_mqtt_commands.o: ../src/app_mqtt_commands.c  .generated_files/flags/default/88473b1bfafd3c4b84f25163cdcf2d7e6846e897 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mqtt_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mqtt_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_mqtt_commands.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_mqtt_commands.o ../src/app_mqtt_commands.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_mqtt_task.o: ../src/app_mqtt_task.c  .generated_files/flags/default/5a3ad1fe9b161dbd4d1fd22f9187450d67f8269d .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mqtt_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mqtt_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_mqtt_task.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_mqtt_task.o ../src/app_mqtt_task.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/misc.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c  .generated_files/flags/default/b5a3cfc1d7869505c1998fc0a15350004779cd2 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/misc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/misc.o.d" -o ${OBJECTDIR}/_ext/1664057780/misc.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/evp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c  .generated_files/flags/default/b6fda7cc5fe64d0a6f49b10a313396e9d638c9a2 .generated_files/flags/default/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/evp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/evp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/wolfmqtt" -I"../src/config/default/third_party_adapter/wolfMQTT/src/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/evp.o.d" -o ${OBJECTDIR}/_ext/1664057780/evp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/pic32mz_curiosity_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/p32MZ2048EFM144.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/pic32mz_curiosity_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=164960,--defsym=_min_stack_size=2048,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/pic32mz_curiosity_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/p32MZ2048EFM144.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/pic32mz_curiosity_v2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=164960,--defsym=_min_stack_size=2048,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/pic32mz_curiosity_v2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
