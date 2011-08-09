def getpeerid(sock):
	LOCAL_PEERCRED = 0x001
	NGROUPS = 16


	xucred_fmt = '2ih16iP'
	res = tuple(struct.unpack(xucred_fmt, sock.getsockopt(0, LOCAL_PEERCRED, struct.calcsize(xucred_fmt))))

	if res[0] != 0:
		raise OSError

	return (res[1], res[3:3+res[2]])	

