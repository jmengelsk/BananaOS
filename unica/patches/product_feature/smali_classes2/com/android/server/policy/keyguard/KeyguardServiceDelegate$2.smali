.class public final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    iget-object v1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/internal/policy/IKeyguardService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;

    move-result-object p2

    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mCallback:Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    const-string v3, "*** Started to create KeyguardServiceWrapper."

    const-string v4, "KeyguardServiceWrapper"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-direct {v3, v1, p2, v2}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object v3, v0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "*** Finished to create KeyguardServiceWrapper, mKeyguardStateMonitor="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_a0

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onSystemReady()V

    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    const/16 v2, -0x2710

    if-eq p2, v2, :cond_59

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setCurrentUser(I)V

    :cond_59
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p2, v3, :cond_65

    if-ne p2, v2, :cond_6a

    :cond_65
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {p1, v1, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedWakingUp(IZ)V

    :cond_6a
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    if-ne p2, v3, :cond_77

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedWakingUp()V

    :cond_77
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    if-eq p2, v3, :cond_81

    if-ne p2, v2, :cond_8f

    :cond_81
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    new-instance p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;

    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mDrawnListenerWhenConnect:Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {p2, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;-><init>(Lcom/android/server/policy/PhoneWindowManager$1;)V

    invoke-virtual {p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    :cond_8f
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    if-ne p2, v3, :cond_9c

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurnedOn()V

    :cond_9c
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iput-object v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mDrawnListenerWhenConnect:Lcom/android/server/policy/PhoneWindowManager$1;

    :cond_a0
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    if-eqz p2, :cond_ad

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onBootCompleted()V

    :cond_ad
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    if-eqz p1, :cond_c0

    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    invoke-virtual {p2, p1, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setOccluded(ZZ)V

    :cond_c0
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    if-nez p2, :cond_cd

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setKeyguardEnabled(Z)V

    :cond_cd
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dreaming:Z

    if-eqz p2, :cond_da

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onDreamingStarted()V

    :cond_da
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->doKeyguardTimeoutRequested:Z

    if-eqz v2, :cond_f1

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    iget-object p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->doKeyguardTimeoutRequestedOptions:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->doKeyguardTimeout(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean v1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->doKeyguardTimeoutRequested:Z

    iput-object v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->doKeyguardTimeoutRequestedOptions:Landroid/os/Bundle;

    :cond_f1
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootAnimFinished:Z

    if-eqz p2, :cond_fe

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedBootAnim()V

    :cond_fe
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dexOccluded:Z

    if-eqz p1, :cond_10b

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setDexOccluded(Z)V

    :cond_10b
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    iput-boolean v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    iput-boolean v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    iput-boolean v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    iput-boolean v1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootAnimFinished:Z

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
