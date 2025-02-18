/* config.h.  Generated automatically by configure.  */
/* Define one of these to indicate what kind of locking to use */
#define LOCK_FCNTL 1
/* #undef LOCK_FLOCK */
/* #undef LOCK_LOCKF */
/* #undef LOCK_LOCKING */
/* #undef LOCK_NONE */

/* Define NOCLOSE if we don't want to support closed channels */
/* #undef NOCLOSE */

/* Define NOIGNORE if we don't want to support closed channels */
/* #undef NOIGNORE */

/* Define one of these depending on whether we are installed suid or sgid */
/* #undef SGID */
#define SUID 1

/* Path of the master party config file */
#define PARTYTAB "/arbornet/etc/party/partytab"

/* Default paths of everything else.  These can be overridden in config file */
#define DFLT_CHANTAB "/arbornet/etc/party/chantab"
#define DFLT_MAKENOISE "/arbornet/etc/party/noisetab"
#define DFLT_HELP "/arbornet/etc/party/partyhlp"
#define DFLT_DIR "/arbornet/var/party/log"
#define DFLT_WHOFILE "/arbornet/var/party/partytmp"
#define DFLT_MAILDIR "/var/mail"

/* Define to `int' if <sys/types.h> doesn't define.  */
/* #undef gid_t */

/* Define if you don't have vprintf but do have _doprnt.  */
/* #undef HAVE_DOPRNT */

/* Define if you have <sys/wait.h> that is POSIX.1 compatible.  */
#define HAVE_SYS_WAIT_H 1

/* Define if you have the vprintf function.  */
#define HAVE_VPRINTF 1

/* Define to `long' if <sys/types.h> doesn't define.  */
/* #undef off_t */

/* Define as the return type of signal handlers (int or void).  */
#define RETSIGTYPE void

/* Define if you have the ANSI C header files.  */
#define STDC_HEADERS 1

/* Define if you can safely include both <sys/time.h> and <time.h>.  */
#define TIME_WITH_SYS_TIME 1

/* Define if your <sys/time.h> declares struct tm.  */
/* #undef TM_IN_SYS_TIME */

/* Define to `int' if <sys/types.h> doesn't define.  */
/* #undef uid_t */

/* Define if you have the dup2 function.  */
#define HAVE_DUP2 1

/* Define if you have the random function.  */
#define HAVE_RANDOM 1

/* Define if you have the select function.  */
#define HAVE_SELECT 1

/* Define if you have the strchr function.  */
#define HAVE_STRCHR 1

/* Define if you have the setreuid function.  */
#define HAVE_SETREUID 1

/* Define if you have the setregid function.  */
#define HAVE_SETREGID 1

/* Define if you have the strstr function.  */
#define HAVE_STRSTR 1

/* Define if you have the siglongjmp function.  */
#define HAVE_SIGLONGJMP 1

/* Define if you have the <fcntl.h> header file.  */
#define HAVE_FCNTL_H 1

/* Define if you have the <paths.h> header file.  */
#define HAVE_PATHS_H 1

/* Define if you have the <sgtty.h> header file.  */
/* #undef HAVE_SGTTY_H */

/* Define if you have the <sys/file.h> header file.  */
#define HAVE_SYS_FILE_H 1

/* Define if you have the <sys/locking.h> header file.  */
/* #undef HAVE_SYS_LOCKING_H */

/* Define if you have the <sys/lockf.h> header file.  */
/* #undef HAVE_SYS_LOCKF_H */

/* Define if you have the <sys/ioctl.h> header file.  */
#define HAVE_SYS_IOCTL_H 1

/* Define if you have the <sys/time.h> header file.  */
#define HAVE_SYS_TIME_H 1

/* Define if you have the <termio.h> header file.  */
/* #undef HAVE_TERMIO_H */

/* Define if you have the <termios.h> header file.  */
#define HAVE_TERMIOS_H 1

/* Define if you have the <unistd.h> header file.  */
#define HAVE_UNISTD_H 1

/* Define if you have the termcap library (-ltermcap).  */
/* #undef HAVE_LIBTERMCAP */
