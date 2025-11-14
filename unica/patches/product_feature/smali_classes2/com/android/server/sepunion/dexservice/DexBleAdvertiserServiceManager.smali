.class public Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBindServiceRunnable:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda0;

.field public mBound:Z

.field public mConnectionBackoffAttempts:I

.field public final mContext:Landroid/content/Context;

.field public final mDeathRecipient:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda2;

.field public final mDeferredConnectionCallback:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda0;

.field public final mHandler:Landroid/os/Handler;

.field public mService:Lcom/android/server/sepunion/dexservice/IDexBleAdvertiserService;

.field public final mServiceConnection:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ServiceThread;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;I)V

    iput-object v0, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mBindServiceRunnable:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;I)V

    iput-object v0, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mDeferredConnectionCallback:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1;-><init>(Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;)V

    iput-object v0, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mServiceConnection:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mConnectionBackoffAttempts:I

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "DexBleAdvertiserServiceManager: mHandler="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DexBleAdvertiserServiceManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;)V

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mDeathRecipient:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda2;

    const-string p0, "DexBleAdvertiserServiceManager() "

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static runOnHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public final bindService()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mDeferredConnectionCallback:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "DexBleAdvertiserServiceManager"

    const-string/jumbo v3, "bindService() start"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->unbindService()V

    iget-object v3, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mBindServiceRunnable:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.sec.android.app.launcher"

    const-string/jumbo v5, "com.sec.android.desktopmode.ble.BleAdvertiserService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mServiceConnection:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1;

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mBound:Z

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->retryConnectionWithBackoff()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    const-string v0, "Failed to bind service"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public final retryConnectionWithBackoff()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mBindServiceRunnable:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string v2, "DexBleAdvertiserServiceManager"

    const-string/jumbo v3, "retryConnectionWithBackoff called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v3, 0x447a0000    # 1000.0f

    iget v4, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mConnectionBackoffAttempts:I

    invoke-static {v3, v4}, Ljava/lang/Math;->scalb(FI)F

    move-result v3

    const v4, 0x49127c00    # 600000.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-long v3, v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v0, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mConnectionBackoffAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mConnectionBackoffAttempts:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to bind service on attempt "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mConnectionBackoffAttempts:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " will try again in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final unbindService()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mBound:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mService:Lcom/android/server/sepunion/dexservice/IDexBleAdvertiserService;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unbindService(), mBound="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mService:Lcom/android/server/sepunion/dexservice/IDexBleAdvertiserService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexBleAdvertiserServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mBound:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mServiceConnection:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v2, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mBound:Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mService:Lcom/android/server/sepunion/dexservice/IDexBleAdvertiserService;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mDeathRecipient:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda2;

    invoke-interface {v0, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to unlink death recipient"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mService:Lcom/android/server/sepunion/dexservice/IDexBleAdvertiserService;

    :cond_2
    :goto_1
    return-void
.end method
