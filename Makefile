# Common prefixes for installation directories.
# See: https://www.gnu.org/software/make/manual/make.html
prefix = /usr/local
exec_prefix = $(prefix)
sbindir = $(exec_prefix)/bin

FlowMaster:
	exit;
  
install:
	install -Dm755 FlowMaster $(sbindir)/FlowMaster;

uninstall:
	rm -f $(sbindir)/FlowMaster;

clean:
	rm  FlowMaster;
