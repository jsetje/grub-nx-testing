/*
 *  GRUB  --  GRand Unified Bootloader
 *  Copyright (C) 2023 Free Software Foundation, Inc.
 *
 *  GRUB is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  GRUB is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with GRUB.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <grub/symbol.h>

	.file	"cache_flush.S"
	.text
/*
 * No further work to do because cache consistency is maintained by hardware on
 * LoongArch.
 */
FUNCTION(grub_arch_clean_dcache_range)
	dbar 0
	jr $ra
#define GRUB_MOK_POLICY_NX_REQUIRED   0x1

grub_err_t
EXPORT_FUNC(grub_efi_linux_boot) (grub_addr_t kernel_address,
				  grub_size_t kernel_size,
				  grub_off_t handover_offset,
				  void *kernel_param, int nx_enabled);

grub_err_t
EXPORT_FUNC(grub_efi_check_nx_image_support) (grub_addr_t kernel_addr,
					      grub_size_t kernel_size,
					      int *nx_supported);

grub_err_t
EXPORT_FUNC(grub_efi_check_nx_required) (int *nx_required);

FUNCTION(grub_arch_invalidate_icache_range)
	ibar 0
	jr $ra
