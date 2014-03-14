#############################################################
#
# NOTE:
#
# AMLOGIC_BOARD_HAS_PMU is general switch to compile on-board
# PMU drivers, ALL new added PMU driver should be depend on 
# this config
#
############################################################

MAKE_FOR_LIB := n

obj-$(CONFIG_AML_PMU_ALGORITHM_SUPPORT) += aml_pmu_dev.o

aml_pmu_dev-objs =
aml_pmu_dev-objs += aml_pmu_module.o

ifeq ($(MAKE_FOR_LIB), y)
aml_pmu_dev-objs += aml_pmu_algorithm.o 
else 
aml_pmu_dev-objs += ../../../../../../../../hardware/amlogic/pmu/aml_pmu_algorithm_lib.z 
endif

