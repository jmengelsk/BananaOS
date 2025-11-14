.class public final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallback:Lcom/android/server/policy/PhoneWindowManager$1;

.field public final mContext:Landroid/content/Context;

.field public mDrawnListenerWhenConnect:Lcom/android/server/policy/PhoneWindowManager$1;

.field public final mDreamManagerStateListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;

.field public final mHandler:Landroid/os/Handler;

.field public final mKeyguardConnection:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;

.field public mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

.field public final mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

.field public mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager$1;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    iput-boolean v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    iput-boolean v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    iput-boolean v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootAnimFinished:Z

    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mDreamManagerStateListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;

    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardConnection:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;

    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mCallback:Lcom/android/server/policy/PhoneWindowManager$1;

    return-void
.end method


# virtual methods
.method public final bindService(Landroid/content/Context;)V
    .locals 7

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040386

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    const/16 v0, 0x100

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardConnection:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;

    iget-object v4, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mHandler:Landroid/os/Handler;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v3, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    iput-boolean v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean v0, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    const-class p1, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/dreams/DreamManagerInternal;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSUI_GRADLE_BUILD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mDreamManagerStateListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;

    invoke-virtual {p1, v0}, Landroid/service/dreams/DreamManagerInternal;->unregisterDreamManagerStateListener(Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mDreamManagerStateListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;

    invoke-virtual {p1, p0}, Landroid/service/dreams/DreamManagerInternal;->registerDreamManagerStateListener(Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;)V

    :cond_2
    return-void
.end method

.method public final isShowing()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    iput-boolean v0, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    return p0
.end method

.method public final isSimLocked()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mKeyguardStateMonitor is null caller="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardServiceWrapper"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
