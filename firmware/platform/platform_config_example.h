/* Platform Configuration (Example / Template)
 *
 * This header defines board- and platform-specific mappings used by the
 * ASOC firmware in firmware/src/.
 *
 * For the initial project, target the A3PE prototype kit and associated ASOC
 * carrier board described in docs/a3pe_proto_kit_ug.pdf and the NALU docs.
 *
 * Replace this file with your actual platform configuration once the final
 * hardware is known.
 */

#ifndef PLATFORM_CONFIG_EXAMPLE_H
#define PLATFORM_CONFIG_EXAMPLE_H

/* -------------------------------------------------------------------------
 * Clock and timing configuration
 * ------------------------------------------------------------------------- */

/* Example: system clock frequency in Hz (update to match board oscillator) */
#define PLATFORM_CLK_SYS_HZ       100000000u

/* TODO: add ASOC reference clock frequency and any derived clocks. */

/* -------------------------------------------------------------------------
 * GPIO and peripheral mappings (examples/placeholders)
 * ------------------------------------------------------------------------- */

/* TODO: map FPGA/MCU pins to ASOC control and status signals.
 * Example (pseudo-code):
 *   #define PIN_ASOC_RESET    GPIO_X
 *   #define PIN_ASOC_TRIGGER  GPIO_Y
 */

/* TODO: define interfaces used to communicate with the FPGA and/or ASOC,
 * such as SPI chip selects, UART ports, or memory-mapped base addresses.
 */

#endif /* PLATFORM_CONFIG_EXAMPLE_H */

