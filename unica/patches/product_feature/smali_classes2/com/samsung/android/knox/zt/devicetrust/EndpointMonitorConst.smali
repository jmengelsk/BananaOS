.class public final Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitorConst;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final ERROR_ALREADY_DONE:I = -0x4

.field public static final ERROR_BY_SYSTEM:I = -0x5

.field public static final ERROR_INVALID_ARGUMENT:I = -0x2

.field public static final ERROR_LIMIT_EXCEEDED:I = -0x3

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_OPERATION_NOT_PERMITTED:I = -0x1

.field public static final ERROR_SERVICE_NOT_FOUND:I = -0x6

.field public static final EXTRAS_PACKAGE_NAME:I = 0x2

.field public static final EXTRAS_PROCESS_NAME:I = 0x1

.field public static final EXTRAS_SECURITY_CONTEXT:I = 0x4

.field public static final FLAG_TRACING_FS:I = 0x1

.field public static final FLAG_TRACING_FW:I = 0x80

.field public static final FLAG_TRACING_NETWORK_EVENT_ABNORMAL_PKT:I = 0x10000

.field public static final FLAG_TRACING_NETWORK_EVENT_BYPASS_VPN:I = 0x40000

.field public static final FLAG_TRACING_NETWORK_EVENT_INSECURE_PORT:I = 0x8000

.field public static final FLAG_TRACING_NETWORK_EVENT_LOCAL_PKT:I = 0x20000

.field public static final FLAG_TRACING_NETWORK_EVENT_SOCK_LISTENER:I = 0x80000

.field public static final FLAG_TRACING_PKT:I = 0x40

.field public static final FLAG_TRACING_PROC:I = 0x800

.field public static final FLAG_TRACING_PROCESS_CREATION:I = 0x1000

.field public static final FLAG_TRACING_PROCESS_PERMISSIONS_MODIFICATION:I = 0x4000

.field public static final FLAG_TRACING_PROCESS_TERMINATION:I = 0x2000

.field public static final FLAG_TRACING_SC_CHMOD:I = 0x100

.field public static final FLAG_TRACING_SC_CHOWN:I = 0x200

.field public static final FLAG_TRACING_SC_CLOSE:I = 0x4

.field public static final FLAG_TRACING_SC_EXECVE:I = 0x10

.field public static final FLAG_TRACING_SC_MEMFD_CREATE:I = 0x400

.field public static final FLAG_TRACING_SC_MOUNT:I = 0x8

.field public static final FLAG_TRACING_SC_OPEN:I = 0x2

.field public static final FLAG_TRACING_SK:I = 0x20

.field public static final GENERIC_SYSCALL_NR_CLOSE:I = 0x39

.field public static final GENERIC_SYSCALL_NR_EXECVE:I = 0xdd

.field public static final GENERIC_SYSCALL_NR_FCHMOD:I = 0x34

.field public static final GENERIC_SYSCALL_NR_FCHMODAT:I = 0x35

.field public static final GENERIC_SYSCALL_NR_FCHOWN:I = 0x37

.field public static final GENERIC_SYSCALL_NR_FCHOWNAT:I = 0x36

.field public static final GENERIC_SYSCALL_NR_MEMFD_CREATE:I = 0x117

.field public static final GENERIC_SYSCALL_NR_MOUNT:I = 0x28

.field public static final GENERIC_SYSCALL_NR_OPEN:I = 0x38

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_GENERALIZED:I = 0x2

.field public static final MODE_RAW:I = 0x3

.field public static final MODE_SIMPLIFIED:I = 0x1

.field public static final MON_TYPE_APP_PROCESS:I = 0x7

.field public static final MON_TYPE_DOMAIN_ACCESS:I = 0x6

.field public static final MON_TYPE_FILE_ACCESS:I = 0x2

.field public static final MON_TYPE_NETWORK_EVENTS:I = 0xd

.field public static final MON_TYPE_NETWORK_EVENT_ABNORMAL_PKT:I = 0xf

.field public static final MON_TYPE_NETWORK_EVENT_BYPASS_VPN:I = 0x11

.field public static final MON_TYPE_NETWORK_EVENT_INSECURE_PORT:I = 0xe

.field public static final MON_TYPE_NETWORK_EVENT_LOCAL_NW_PKT:I = 0x10

.field public static final MON_TYPE_NETWORK_EVENT_SOCK_LISTENER:I = 0x12

.field public static final MON_TYPE_PROCESS:I = 0x4

.field public static final MON_TYPE_PROCESS_CREATION:I = 0xa

.field public static final MON_TYPE_PROCESS_PERMISSIONS_MODIFICATION:I = 0xc

.field public static final MON_TYPE_PROCESS_TERMINATION:I = 0xb

.field public static final MON_TYPE_SOCK_STATE_CHANGE:I = 0x3

.field public static final MON_TYPE_SYSTEM_CALL:I = 0x1

.field public static final MON_TYPE_TLS_PACKET:I = 0x5

.field public static final OPT_TRACE_APPLICATION_ONLY:Ljava/lang/String; = "app_only"

.field public static final TRACE_CLASS_DOMAIN_ACCESS:I = 0x2

.field public static final TRACE_CLASS_FILE_ACCESS:I = 0x1

.field public static final TRACE_EVENT_APP_BINDING:I = 0x259

.field public static final TRACE_EVENT_APP_DYING:I = 0x25a

.field public static final TRACE_EVENT_F2FS_DATAREAD_END:I = 0xd3

.field public static final TRACE_EVENT_F2FS_DATAREAD_START:I = 0xd2

.field public static final TRACE_EVENT_F2FS_DATAWRITE_END:I = 0xd5

.field public static final TRACE_EVENT_F2FS_DATAWRITE_START:I = 0xd4

.field public static final TRACE_EVENT_F2FS_IGET:I = 0xc9

.field public static final TRACE_EVENT_F2FS_IGET_EXIT:I = 0xca

.field public static final TRACE_EVENT_F2FS_READDIR:I = 0xcb

.field public static final TRACE_EVENT_F2FS_READPAGE:I = 0xcc

.field public static final TRACE_EVENT_F2FS_READPAGES:I = 0xcd

.field public static final TRACE_EVENT_F2FS_UNLINK_ENTER:I = 0xce

.field public static final TRACE_EVENT_F2FS_UNLINK_EXIT:I = 0xcf

.field public static final TRACE_EVENT_F2FS_WRITEPAGE:I = 0xd0

.field public static final TRACE_EVENT_F2FS_WRITEPAGES:I = 0xd1

.field public static final TRACE_EVENT_INET_SOCK_SET_STATE:I = 0x12d

.field public static final TRACE_EVENT_PRIVILEGE_ESCALATION:I = 0x322

.field public static final TRACE_EVENT_SCHED_CLS_EGRESS:I = 0x1f6

.field public static final TRACE_EVENT_SCHED_CLS_INGRESS:I = 0x1f5

.field public static final TRACE_EVENT_SCHED_PROCESS_EXEC:I = 0x2bd

.field public static final TRACE_EVENT_SCHED_PROCESS_EXIT:I = 0x2be

.field public static final TRACE_EVENT_SCHED_PROCESS_FORK:I = 0x2bf

.field public static final TRACE_EVENT_SYS_CLOSE:I = 0x68

.field public static final TRACE_EVENT_SYS_ENTER:I = 0x65

.field public static final TRACE_EVENT_SYS_ENTER_EXECVE:I = 0x4c5

.field public static final TRACE_EVENT_SYS_ENTER_SETFSGID:I = 0x480

.field public static final TRACE_EVENT_SYS_ENTER_SETFSUID:I = 0x47f

.field public static final TRACE_EVENT_SYS_ENTER_SETGID:I = 0x478

.field public static final TRACE_EVENT_SYS_ENTER_SETREGID:I = 0x477

.field public static final TRACE_EVENT_SYS_ENTER_SETRESGID:I = 0x47d

.field public static final TRACE_EVENT_SYS_ENTER_SETRESUID:I = 0x47b

.field public static final TRACE_EVENT_SYS_ENTER_SETREUID:I = 0x479

.field public static final TRACE_EVENT_SYS_ENTER_SETUID:I = 0x47a

.field public static final TRACE_EVENT_SYS_EXECVE:I = 0x6a

.field public static final TRACE_EVENT_SYS_EXIT:I = 0x66

.field public static final TRACE_EVENT_SYS_EXIT_EXECVE:I = 0x8ad

.field public static final TRACE_EVENT_SYS_EXIT_SETFSGID:I = 0x868

.field public static final TRACE_EVENT_SYS_EXIT_SETFSUID:I = 0x867

.field public static final TRACE_EVENT_SYS_EXIT_SETGID:I = 0x860

.field public static final TRACE_EVENT_SYS_EXIT_SETREGID:I = 0x85f

.field public static final TRACE_EVENT_SYS_EXIT_SETRESGID:I = 0x865

.field public static final TRACE_EVENT_SYS_EXIT_SETRESUID:I = 0x863

.field public static final TRACE_EVENT_SYS_EXIT_SETREUID:I = 0x861

.field public static final TRACE_EVENT_SYS_EXIT_SETUID:I = 0x862

.field public static final TRACE_EVENT_SYS_FCHMOD:I = 0x6b

.field public static final TRACE_EVENT_SYS_FCHMODAT:I = 0x6c

.field public static final TRACE_EVENT_SYS_FCHOWN:I = 0x6e

.field public static final TRACE_EVENT_SYS_FCHOWNAT:I = 0x6d

.field public static final TRACE_EVENT_SYS_MEMFD_CREATE:I = 0x6f

.field public static final TRACE_EVENT_SYS_MOUNT:I = 0x69

.field public static final TRACE_EVENT_SYS_OPEN:I = 0x67

.field public static final TRACE_EVENT_TASK_RENAME:I = 0x321

.field public static final TRACE_FIRST_TYPE:I = 0x1

.field public static final TRACE_LAST_TYPE:I = 0x12

.field public static final TRACE_SYSTEM_ETC:I = 0x5

.field public static final TRACE_SYSTEM_F2FS:I = 0x2

.field public static final TRACE_SYSTEM_RAW_SYSCALL:I = 0x1

.field public static final TRACE_SYSTEM_SCHED:I = 0x4

.field public static final TRACE_SYSTEM_SOCK:I = 0x3

.field public static final TRACE_TYPE_APP_PROC:I = 0x7

.field public static final TRACE_TYPE_DOMAIN:I = 0x6

.field public static final TRACE_TYPE_FS:I = 0x2

.field public static final TRACE_TYPE_NETWORK_EVENTS:I = 0xd

.field public static final TRACE_TYPE_NETWORK_EVENT_ABNORMAL_PKT:I = 0xf

.field public static final TRACE_TYPE_NETWORK_EVENT_BYPASS_VPN:I = 0x11

.field public static final TRACE_TYPE_NETWORK_EVENT_INSECURE_PORT:I = 0xe

.field public static final TRACE_TYPE_NETWORK_EVENT_LOCAL_NW_PKT:I = 0x10

.field public static final TRACE_TYPE_NETWORK_EVENT_SOCK_LISTENER:I = 0x12

.field public static final TRACE_TYPE_PHISHING:I = 0x8

.field public static final TRACE_TYPE_PKT:I = 0x5

.field public static final TRACE_TYPE_PROC:I = 0x4

.field public static final TRACE_TYPE_PROCESS_CREATION:I = 0xa

.field public static final TRACE_TYPE_PROCESS_PERMISSIONS_MODIFICATION:I = 0xc

.field public static final TRACE_TYPE_PROCESS_TERMINATION:I = 0xb

.field public static final TRACE_TYPE_SIGNALS:I = 0x9

.field public static final TRACE_TYPE_SOCK:I = 0x3

.field public static final TRACE_TYPE_SYSCALL:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convScEventToScFlag(I)I
    .registers 1

    packed-switch p0, :pswitch_data_18

    const/4 p0, 0x0

    return p0

    :pswitch_5  #0x6f
    const/16 p0, 0x400

    return p0

    :pswitch_8  #0x6d, 0x6e
    const/16 p0, 0x200

    return p0

    :pswitch_b  #0x6b, 0x6c
    const/16 p0, 0x100

    return p0

    :pswitch_e  #0x6a
    const/16 p0, 0x10

    return p0

    :pswitch_11  #0x69
    const/16 p0, 0x8

    return p0

    :pswitch_14  #0x68
    const/4 p0, 0x4

    return p0

    :pswitch_16  #0x67
    const/4 p0, 0x2

    return p0

    :pswitch_data_18
    .packed-switch 0x67
        :pswitch_16  #00000067
        :pswitch_14  #00000068
        :pswitch_11  #00000069
        :pswitch_e  #0000006a
        :pswitch_b  #0000006b
        :pswitch_b  #0000006c
        :pswitch_8  #0000006d
        :pswitch_8  #0000006e
        :pswitch_5  #0000006f
    .end packed-switch
.end method

.method public static matchScEventToScFlags(II)Z
    .registers 2

    invoke-static {p0}, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitorConst;->convScEventToScFlag(I)I

    move-result p0

    and-int/2addr p0, p1

    if-lez p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static translateClass(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const-string/jumbo v0, "Unknown("

    const-string v1, ")"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const-string p0, "Domain Access"

    return-object p0

    :cond_13
    const-string p0, "File Access"

    return-object p0
.end method

.method public static translateEvent(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_7c

    const/16 v0, 0x1f5

    if-eq p0, v0, :cond_78

    const/16 v0, 0x1f6

    if-eq p0, v0, :cond_74

    packed-switch p0, :pswitch_data_80

    packed-switch p0, :pswitch_data_96

    const-string/jumbo v0, "Unknown("

    const-string v1, ")"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1c  #0xd5
    const-string/jumbo p0, "f2fs_datawrite_end"

    return-object p0

    :pswitch_20  #0xd4
    const-string/jumbo p0, "f2fs_datawrite_start"

    return-object p0

    :pswitch_24  #0xd3
    const-string/jumbo p0, "f2fs_dataread_end"

    return-object p0

    :pswitch_28  #0xd2
    const-string/jumbo p0, "f2fs_dataread_start"

    return-object p0

    :pswitch_2c  #0xd1
    const-string/jumbo p0, "f2fs_writepages"

    return-object p0

    :pswitch_30  #0xd0
    const-string/jumbo p0, "f2fs_writepage"

    return-object p0

    :pswitch_34  #0xcf
    const-string/jumbo p0, "f2fs_unlink_exit"

    return-object p0

    :pswitch_38  #0xce
    const-string/jumbo p0, "f2fs_unlink_enter"

    return-object p0

    :pswitch_3c  #0xcd
    const-string/jumbo p0, "f2fs_readpages"

    return-object p0

    :pswitch_40  #0xcc
    const-string/jumbo p0, "f2fs_readpage"

    return-object p0

    :pswitch_44  #0xcb
    const-string/jumbo p0, "f2fs_readdir"

    return-object p0

    :pswitch_48  #0xca
    const-string/jumbo p0, "f2fs_iget_exit"

    return-object p0

    :pswitch_4c  #0xc9
    const-string/jumbo p0, "f2fs_iget"

    return-object p0

    :pswitch_50  #0x6f
    const-string/jumbo p0, "raw_syscalls___memfd_create"

    return-object p0

    :pswitch_54  #0x6e
    const-string/jumbo p0, "raw_syscalls___fchown"

    return-object p0

    :pswitch_58  #0x6d
    const-string/jumbo p0, "raw_syscalls___fchownat"

    return-object p0

    :pswitch_5c  #0x6c
    const-string/jumbo p0, "raw_syscalls___fchmodat"

    return-object p0

    :pswitch_60  #0x6b
    const-string/jumbo p0, "raw_syscalls___fchmod"

    return-object p0

    :pswitch_64  #0x6a
    const-string/jumbo p0, "raw_syscalls___execve"

    return-object p0

    :pswitch_68  #0x69
    const-string/jumbo p0, "raw_syscalls___mount"

    return-object p0

    :pswitch_6c  #0x68
    const-string/jumbo p0, "raw_syscalls___close"

    return-object p0

    :pswitch_70  #0x67
    const-string/jumbo p0, "raw_syscalls___open"

    return-object p0

    :cond_74
    const-string/jumbo p0, "schedcls_egress"

    return-object p0

    :cond_78
    const-string/jumbo p0, "schedcls_ingress"

    return-object p0

    :cond_7c
    const-string/jumbo p0, "inet_sock_set_state"

    return-object p0

    :pswitch_data_80
    .packed-switch 0x67
        :pswitch_70  #00000067
        :pswitch_6c  #00000068
        :pswitch_68  #00000069
        :pswitch_64  #0000006a
        :pswitch_60  #0000006b
        :pswitch_5c  #0000006c
        :pswitch_58  #0000006d
        :pswitch_54  #0000006e
        :pswitch_50  #0000006f
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0xc9
        :pswitch_4c  #000000c9
        :pswitch_48  #000000ca
        :pswitch_44  #000000cb
        :pswitch_40  #000000cc
        :pswitch_3c  #000000cd
        :pswitch_38  #000000ce
        :pswitch_34  #000000cf
        :pswitch_30  #000000d0
        :pswitch_2c  #000000d1
        :pswitch_28  #000000d2
        :pswitch_24  #000000d3
        :pswitch_20  #000000d4
        :pswitch_1c  #000000d5
    .end packed-switch
.end method

.method public static translateSystem(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_16

    const-string/jumbo v0, "Unknown("

    const-string v1, ")"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const-string/jumbo p0, "sched"

    return-object p0

    :cond_1a
    const-string/jumbo p0, "sock"

    return-object p0

    :cond_1e
    const-string/jumbo p0, "f2fs"

    return-object p0

    :cond_22
    const-string/jumbo p0, "raw_syscalls"

    return-object p0
.end method

.method public static validateMode(I)Z
    .registers 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/4 v1, 0x3

    if-gt p0, v1, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static validateTraceType(I)Z
    .registers 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_8

    const/16 v1, 0x12

    if-gt p0, v1, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
