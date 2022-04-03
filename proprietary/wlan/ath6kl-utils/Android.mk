ATH_BLD_DIR := $(call my-dir)

#Build/Package Ath6kl Module only in case of 8960 target variants
ifeq ($(call is-board-platform,msm8960),true)
        ifeq ($(BOARD_HAS_ATH_WLAN_AR6004), true)
                include $(ATH_BLD_DIR)/ath6kl_fw/AR6004/Android.mk
                include $(ATH_BLD_DIR)/btfilter/Android.mk
        endif
endif

#Build/Package Ath6kl Module in case of 8974 target variants
ifeq ($(call is-board-platform,msm8974),true)
        ifeq ($(BOARD_HAS_ATH_WLAN_AR6004), true)
                include $(ATH_BLD_DIR)/ath6kl_fw/AR6004/Android.mk
                include $(ATH_BLD_DIR)/btfilter/Android.mk
        endif
endif
