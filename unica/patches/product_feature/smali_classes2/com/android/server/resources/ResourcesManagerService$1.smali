.class public final Lcom/android/server/resources/ResourcesManagerService$1;
.super Landroid/content/res/IResourcesManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/resources/ResourcesManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/resources/ResourcesManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/resources/ResourcesManagerService$1;->this$0:Lcom/android/server/resources/ResourcesManagerService;

    invoke-direct {p0}, Landroid/content/res/IResourcesManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_11

    :try_start_4
    iget-object p0, p0, Lcom/android/server/resources/ResourcesManagerService$1;->this$0:Lcom/android/server/resources/ResourcesManagerService;

    iget-object p0, p0, Lcom/android/server/resources/ResourcesManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->dumpAllResources(Landroid/os/ParcelFileDescriptor;Ljava/io/PrintWriter;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_13

    if-eqz p1, :cond_37

    :try_start_d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    goto :goto_1f

    :catchall_13
    move-exception p0

    if-eqz p1, :cond_1e

    :try_start_16
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception p1

    :try_start_1b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1e
    :goto_1e
    throw p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_11

    :goto_1f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Exception while trying to dump all resources: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_37
    return-void
.end method

.method public final dumpResources(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_18

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_b

    goto :goto_18

    :cond_b
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "dump should only be called by shell"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/android/server/resources/ResourcesManagerService$1;->this$0:Lcom/android/server/resources/ResourcesManagerService;

    iget-object p0, p0, Lcom/android/server/resources/ResourcesManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Unknown process: "

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    :try_start_26
    const-string/jumbo v1, "dumpResources"

    const/4 v2, -0x2

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/am/ActivityManagerService;->findProcessLOSP(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v1, :cond_3f

    invoke-virtual {v1, p2, p3}, Landroid/app/IApplicationThread$Delegator;->dumpResources(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_3d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x1

    return p0

    :catchall_3d
    move-exception p1

    goto :goto_51

    :cond_3f
    :try_start_3f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_3f .. :try_end_52} :catchall_3d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 11

    new-instance v0, Lcom/android/server/resources/ResourcesManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/resources/ResourcesManagerShellCommand;-><init>(Lcom/android/server/resources/ResourcesManagerService$1;)V

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
