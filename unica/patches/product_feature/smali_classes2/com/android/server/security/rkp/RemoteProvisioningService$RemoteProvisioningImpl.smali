.class public final Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;
.super Landroid/security/rkp/IRemoteProvisioning$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/rkp/RemoteProvisioningService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-direct {p0}, Landroid/security/rkp/IRemoteProvisioning$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p3, "RemoteProvisionSysSvc"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUidOrThrow()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance p3, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;

    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p3, p0, p1}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3, p2}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getRegistration(Ljava/lang/String;Landroid/security/rkp/IGetRegistrationCallback;)V
    .locals 9

    const-string/jumbo v0, "getRegistration("

    invoke-static {}, Landroid/os/Binder;->getCallingUidOrThrow()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    :try_start_0
    const-string/jumbo v1, "RemoteProvisionSysSvc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Lcom/android/server/security/rkp/RemoteProvisioningService;->CREATE_REGISTRATION_TIMEOUT:Ljava/time/Duration;

    new-instance v6, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;

    invoke-direct {v6, v5, p2}, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;-><init>(Ljava/util/concurrent/Executor;Landroid/security/rkp/IGetRegistrationCallback;)V

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Landroid/security/rkp/service/RegistrationProxy;->createAsync(Landroid/content/Context;ILjava/lang/String;Ljava/time/Duration;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUidOrThrow()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    new-instance v3, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;

    iget-object v4, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    move-object v4, p0

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
