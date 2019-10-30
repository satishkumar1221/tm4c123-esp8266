#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = gnu.targets.arm.M4F{1,0,7.2,1
#
ifeq (,$(MK_NOGENDEPS))
-include package/cfg/app_pm4fg.om4fg.dep
package/cfg/app_pm4fg.om4fg.dep: ;
endif

package/cfg/app_pm4fg.om4fg: | .interfaces
package/cfg/app_pm4fg.om4fg: package/cfg/app_pm4fg.c package/cfg/app_pm4fg.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4fg $< ...
	$(gnu.targets.arm.M4F.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__   -Dxdc_cfg__xheader__='"configPkg/package/cfg/app_pm4fg.h"'  -Dxdc_target_name__=M4F -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_2_1  -O2   $(XDCINCS) -I/home/satish/ti/bios_6_76_02_02/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/home/satish/ti/bios_6_76_02_02/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/cfg/app_pm4fg.om4fg: export LD_LIBRARY_PATH=

package/cfg/app_pm4fg.sm4fg: | .interfaces
package/cfg/app_pm4fg.sm4fg: package/cfg/app_pm4fg.c package/cfg/app_pm4fg.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4fg -S $< ...
	$(gnu.targets.arm.M4F.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__   -Dxdc_cfg__xheader__='"configPkg/package/cfg/app_pm4fg.h"'  -Dxdc_target_name__=M4F -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_2_1  -O2   $(XDCINCS) -I/home/satish/ti/bios_6_76_02_02/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include/newlib-nano -I/home/satish/ti/bios_6_76_02_02/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/cfg/app_pm4fg.sm4fg: export LD_LIBRARY_PATH=

clean,m4fg ::
	-$(RM) package/cfg/app_pm4fg.om4fg
	-$(RM) package/cfg/app_pm4fg.sm4fg

app.pm4fg: package/cfg/app_pm4fg.om4fg package/cfg/app_pm4fg.mak

clean::
	-$(RM) package/cfg/app_pm4fg.mak