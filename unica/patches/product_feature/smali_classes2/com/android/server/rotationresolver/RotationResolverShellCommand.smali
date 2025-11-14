.class public final Lcom/android/server/rotationresolver/RotationResolverShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sTestableRotationCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;


# instance fields
.field public final mService:Lcom/android/server/rotationresolver/RotationResolverManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;->mLastCallbackResultCode:I

    sput-object v0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->sTestableRotationCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "get-last-resolution"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "set-temporary-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "resolve-rotation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "get-bound-package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    sget-object p1, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->sTestableRotationCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;

    iget p1, p1, Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;->mLastCallbackResultCode:I

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    return v0

    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    const-string/jumbo p0, "RotationResolverService temporary reset. "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "RotationResolverService temporarily set to "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " for "

    const-string/jumbo v4, "ms"

    invoke-static {v3, v2, v1, v4, p0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return v0

    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v1, Landroid/service/rotationresolver/RotationResolutionRequest;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x7d0

    invoke-direct/range {v1 .. v7}, Landroid/service/rotationresolver/RotationResolutionRequest;-><init>(Ljava/lang/String;IIZJ)V

    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    sget-object v2, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->sTestableRotationCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;

    const-string/jumbo v3, "service not available for user_id: "

    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    if-eqz p0, :cond_6

    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    invoke-virtual {p0, v2, v1, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->resolveRotationLocked(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_6
    const-string/jumbo p0, "RotationResolverManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    monitor-exit v4

    return v0

    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    monitor-exit v2

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_7
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p0, 0x0

    :goto_4
    if-nez p0, :cond_8

    const-string p0, ""

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :goto_6
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c399b40 -> :sswitch_3
        0x16ed7a3f -> :sswitch_2
        0x41db2e8e -> :sswitch_1
        0x6c821bcc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Rotation Resolver commands: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  resolve-rotation USER_ID: request a rotation resolution."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get-last-resolution: show the last rotation resolution result."

    const-string v1, "  get-bound-package USER_ID:"

    const-string v2, "    Print the bound package that implements the service."

    const-string v3, "  set-temporary-service USER_ID [COMPONENT_NAME DURATION]"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    Temporarily (for DURATION ms) changes the service implementation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    To reset, call with just the USER_ID argument."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
