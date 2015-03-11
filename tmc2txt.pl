open F, 'ANUGA.TMC' and binmode F and seek F, 0x1a6, 0 or die;
$/ = \16;
for (0 .. 0xf) {
	printf "%02X: %02X-%02X %02X-%02X %02X-%02X %02X-%02X | %02X-%02X %02X-%02X %02X-%02X %02X-%02X\n", $_, reverse unpack 'C16', <F>;
}
