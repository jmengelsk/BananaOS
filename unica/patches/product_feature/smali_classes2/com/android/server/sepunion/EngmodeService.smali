.class public final Lcom/android/server/sepunion/EngmodeService;
.super Lcom/samsung/android/sepunion/IEngmodeService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBootCompleteReceiver:Lcom/android/server/sepunion/EngmodeService$2;

.field public final mContext:Landroid/content/Context;

.field public mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

.field public mNeedChangeFlag:Z

.field public mNeedUpdate:Z

.field public mNetworkCallback:Lcom/android/server/sepunion/EngmodeService$3;

.field public mRunTimeTask:Lcom/android/server/sepunion/EngmodeService$1;

.field public mTimeThread:Ljava/lang/Thread;

.field public mTimerObserve:Ljava/util/Timer;

.field public mUpdateTimer:Ljava/util/Timer;


# direct methods
.method public static -$$Nest$mregisterNetworkCallback(Lcom/android/server/sepunion/EngmodeService;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/EngmodeService$3;

    invoke-direct {v2, p0}, Lcom/android/server/sepunion/EngmodeService$3;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    iput-object v2, p0, Lcom/android/server/sepunion/EngmodeService;->mNetworkCallback:Lcom/android/server/sepunion/EngmodeService$3;

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mNetworkCallback:Lcom/android/server/sepunion/EngmodeService$3;

    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sepunion/IEngmodeService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/EngmodeService;->mNeedChangeFlag:Z

    new-instance v0, Lcom/android/server/sepunion/EngmodeService$2;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/EngmodeService$2;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mBootCompleteReceiver:Lcom/android/server/sepunion/EngmodeService$2;

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/sepunion/EngmodeService;->mNeedUpdate:Z

    const-string/jumbo p0, "engmode_service"

    const-string p1, "EM Service is started"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p0, "\n##### EngmodeService #####\n##### (dumpsys sepunion EngmodeService) #####\n"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onBootPhase(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    :try_start_0
    const-string/jumbo p1, "engmode_service"

    const-string/jumbo v0, "onBootPhase() boot completed"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mBootCompleteReceiver:Lcom/android/server/sepunion/EngmodeService$2;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final onCleanupUser(I)V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 0

    return-void
.end method

.method public final onStartUser(I)V
    .locals 0

    return-void
.end method

.method public final onStopUser(I)V
    .locals 0

    return-void
.end method

.method public final onSwitchUser(I)V
    .locals 0

    return-void
.end method

.method public final onUnlockUser(I)V
    .locals 0

    return-void
.end method
