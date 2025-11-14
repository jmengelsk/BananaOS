.class public Lcom/samsung/android/server/contextengine/SemContextEngineService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public isScreenOn:Z

.field public final mBroadcastReceiver:Lcom/samsung/android/server/contextengine/SemContextEngineService$1;

.field public final mContext:Landroid/content/Context;

.field public final mSceImpl:Lcom/samsung/android/server/contextengine/SemContextEngineServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->isScreenOn:Z

    new-instance v0, Lcom/samsung/android/server/contextengine/SemContextEngineService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/contextengine/SemContextEngineService$1;-><init>(Lcom/samsung/android/server/contextengine/SemContextEngineService;)V

    iput-object v0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->mBroadcastReceiver:Lcom/samsung/android/server/contextengine/SemContextEngineService$1;

    const-string/jumbo v0, "SemContextEngineService"

    const-string/jumbo v1, "SemContextEngineService create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/server/contextengine/SemContextEngineServiceImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/contextengine/SemContextEngineServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->mSceImpl:Lcom/samsung/android/server/contextengine/SemContextEngineServiceImpl;

    iput-object p1, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 2

    const-string/jumbo v0, "onStart"

    const-string/jumbo v1, "SemContextEngineService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->mSceImpl:Lcom/samsung/android/server/contextengine/SemContextEngineServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onUserUnlocking : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "SemContextEngineService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->mBroadcastReceiver:Lcom/samsung/android/server/contextengine/SemContextEngineService$1;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
