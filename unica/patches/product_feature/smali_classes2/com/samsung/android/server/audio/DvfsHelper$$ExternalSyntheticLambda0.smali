.class public final synthetic Lcom/samsung/android/server/audio/DvfsHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/audio/DvfsHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/audio/DvfsHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/DvfsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/audio/DvfsHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/server/audio/DvfsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/audio/DvfsHelper;

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsCPUBoostedForVoIP:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DvfsHelper;->acquireCPUBoost()V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    const-string v1, "AS.DvfsHelper"

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "release() cpu min lock"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_1b
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_CPU_STATE_LOCK:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "releaseCPUBoost CPU state lock"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_2e
    return-void
.end method
