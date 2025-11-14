.class public Lcom/samsung/android/server/audio/DvfsHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sInstance:Lcom/samsung/android/server/audio/DvfsHelper;


# instance fields
.field public final boostChecker:Lcom/samsung/android/server/audio/DvfsHelper$$ExternalSyntheticLambda0;

.field public mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

.field public final mDvfsManagerFactory:Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;

.field public final mHandler:Landroid/os/Handler;

.field public mIsCPUBoostedForVoIP:Z

.field public mIsScreenOn:Z

.field public mRetryDelayMs:I

.field public final mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsCPUBoostedForVoIP:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsScreenOn:Z

    const/16 v0, 0x6d60

    iput v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mRetryDelayMs:I

    new-instance v0, Lcom/samsung/android/server/audio/DvfsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/DvfsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/DvfsHelper;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->boostChecker:Lcom/samsung/android/server/audio/DvfsHelper$$ExternalSyntheticLambda0;

    iput-object p2, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mDvfsManagerFactory:Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;

    check-cast p2, Lcom/samsung/android/server/audio/DvfsHelper$DefaultDvfsManagerFactory;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "AUDIOSERVICE_VOIP_BOOST"

    invoke-static {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p1, :cond_2f

    const/16 p2, 0xce4

    invoke-virtual {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_2f
    const-string p1, "AS.DvfsHelper"

    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object p1

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final acquireCPUBoost()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_5

    goto :goto_39

    :cond_5
    const-string v0, "AS.DvfsHelper"

    const-string/jumbo v1, "acquire() cpu min lock for audio VoIP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_CPU_STATE_LOCK:Z

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_27

    const-string/jumbo v1, "acquireCPUBoost CPU state lock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_27
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->boostChecker:Lcom/samsung/android/server/audio/DvfsHelper$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mRetryDelayMs:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_39
    :goto_39
    return-void
.end method

.method public setRetryTime(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mRetryDelayMs:I

    return-void
.end method
