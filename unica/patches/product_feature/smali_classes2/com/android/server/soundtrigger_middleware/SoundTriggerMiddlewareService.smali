.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;
.super Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

.field public final mInjection:Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/content/Context;Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;)V
    .registers 4

    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mInjection:Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;

    return-void
.end method


# virtual methods
.method public final attachAsMiddleman(ILandroid/media/permission/Identity;Landroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Z)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .registers 8

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.SOUNDTRIGGER_DELEGATE_IDENTITY"

    invoke-static {v0, v1, p2, p3}, Landroid/media/permission/PermissionUtil;->establishIdentityIndirect(Landroid/content/Context;Ljava/lang/String;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object p2

    :try_start_f
    new-instance p3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    invoke-virtual {p0, p1, p4, p5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;Z)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_20

    if-eqz p2, :cond_1f

    invoke-interface {p2}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_1f
    return-object p3

    :catchall_20
    move-exception p0

    if-eqz p2, :cond_2b

    :try_start_23
    invoke-interface {p2}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2b
    :goto_2b
    throw p0
.end method

.method public final attachAsOriginator(ILandroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .registers 6

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroid/media/permission/PermissionUtil;->establishIdentityDirect(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object p2

    :try_start_7
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p3, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;Z)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_19

    if-eqz p2, :cond_18

    invoke-interface {p2}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_18
    return-object v0

    :catchall_19
    move-exception p0

    if-eqz p2, :cond_24

    :try_start_1c
    invoke-interface {p2}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    throw p0
.end method

.method public final attachFakeHalInjection(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Landroid/content/PermissionChecker;->checkCallingOrSelfPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;)I

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_c
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mInjection:Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->registerClient(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    if-eqz v0, :cond_19

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_19
    return-void

    :catchall_1a
    move-exception p0

    if-eqz v0, :cond_25

    :try_start_1d
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_25
    :goto_25
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    if-eqz p0, :cond_7

    invoke-interface {p0, p2}, Lcom/android/server/soundtrigger_middleware/Dumpable;->dump(Ljava/io/PrintWriter;)V

    :cond_7
    return-void
.end method

.method public final listModulesAsMiddleman(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .registers 5

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.SOUNDTRIGGER_DELEGATE_IDENTITY"

    invoke-static {v0, v1, p1, p2}, Landroid/media/permission/PermissionUtil;->establishIdentityIndirect(Landroid/content/Context;Ljava/lang/String;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object p1

    :try_start_9
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_15

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_14
    return-object p0

    :catchall_15
    move-exception p0

    if-eqz p1, :cond_20

    :try_start_18
    invoke-interface {p1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    throw p0
.end method

.method public final listModulesAsOriginator(Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .registers 2

    invoke-static {p1}, Landroid/media/permission/PermissionUtil;->establishIdentityDirect(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object p1

    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    if-eqz p1, :cond_f

    invoke-interface {p1}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_f
    return-object p0

    :catchall_10
    move-exception p0

    if-eqz p1, :cond_1b

    :try_start_13
    invoke-interface {p1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw p0
.end method
