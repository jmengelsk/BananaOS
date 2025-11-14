.class public final Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;
.super Landroid/os/instrumentation/IDynamicInstrumentationManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;->this$0:Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;

    invoke-direct {p0}, Landroid/os/instrumentation/IDynamicInstrumentationManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final getExecutableMethodFileOffsets(Landroid/os/instrumentation/TargetProcess;Landroid/os/instrumentation/MethodDescriptor;Landroid/os/instrumentation/IOffsetCallback;)V
    .registers 10

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->executableMethodFileOffsets()Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;->this$0:Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DYNAMIC_INSTRUMENTATION"

    const-string v2, "Caller must have DYNAMIC_INSTRUMENTATION permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/instrumentation/TargetProcess;->processName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/os/instrumentation/TargetProcess;->processName:Ljava/lang/String;

    const-string/jumbo v1, "system_server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    :try_start_24
    iget-object p0, p0, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;->this$0:Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;

    iget-object v0, p0, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v1, p1, Landroid/os/instrumentation/TargetProcess;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/os/instrumentation/TargetProcess;->pid:I

    iget v3, p1, Landroid/os/instrumentation/TargetProcess;->uid:I

    new-instance v5, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService$1;

    invoke-direct {v5, p3}, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService$1;-><init>(Landroid/os/instrumentation/IOffsetCallback;)V

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityManagerInternal;->getExecutableMethodFileOffsets(Ljava/lang/String;IILandroid/os/instrumentation/MethodDescriptor;Landroid/os/instrumentation/IOffsetCallback;)V
    :try_end_37
    .catch Ljava/util/NoSuchElementException; {:try_start_24 .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "The specified app process cannot be found."

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_43
    move-object v4, p2

    const-class p0, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0, v4}, Landroid/os/instrumentation/MethodDescriptorParser;->parseMethodDescriptor(Ljava/lang/ClassLoader;Landroid/os/instrumentation/MethodDescriptor;)Ljava/lang/reflect/Executable;

    move-result-object p0

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->executableMethodFileOffsetsV2()Z

    move-result p1

    if-eqz p1, :cond_59

    invoke-static {p0}, Ldalvik/system/VMDebug;->getExecutableMethodFileOffsets(Ljava/lang/reflect/Executable;)Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;

    move-result-object p0

    goto :goto_63

    :cond_59
    instance-of p1, p0, Ljava/lang/reflect/Method;

    if-eqz p1, :cond_8f

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-static {p0}, Ldalvik/system/VMDebug;->getExecutableMethodFileOffsets(Ljava/lang/reflect/Method;)Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;

    move-result-object p0

    :goto_63
    if-nez p0, :cond_6a

    const/4 p0, 0x0

    :try_start_66
    invoke-interface {p3, p0}, Landroid/os/instrumentation/IOffsetCallback;->onResult(Landroid/os/instrumentation/ExecutableMethodFileOffsets;)V

    return-void

    :cond_6a
    new-instance p1, Landroid/os/instrumentation/ExecutableMethodFileOffsets;

    invoke-direct {p1}, Landroid/os/instrumentation/ExecutableMethodFileOffsets;-><init>()V

    invoke-virtual {p0}, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->getContainerPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/os/instrumentation/ExecutableMethodFileOffsets;->containerPath:Ljava/lang/String;

    invoke-virtual {p0}, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->getContainerOffset()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/os/instrumentation/ExecutableMethodFileOffsets;->containerOffset:J

    invoke-virtual {p0}, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->getMethodOffset()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/os/instrumentation/ExecutableMethodFileOffsets;->methodOffset:J

    invoke-interface {p3, p1}, Landroid/os/instrumentation/IOffsetCallback;->onResult(Landroid/os/instrumentation/ExecutableMethodFileOffsets;)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_84} :catch_85

    return-void

    :catch_85
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to invoke result callback"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_8f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_95
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
