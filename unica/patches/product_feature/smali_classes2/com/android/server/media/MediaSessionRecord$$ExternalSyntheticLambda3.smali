.class public final synthetic Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaSessionRecord;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Z

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:I

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaSessionRecord;IIIZILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/media/MediaSessionRecord;

    iput p2, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$1:I

    iput p3, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$2:I

    iput p4, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$3:I

    iput-boolean p5, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$4:Z

    iput p6, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$5:I

    iput-object p7, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$6:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$7:I

    iput p9, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$8:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/media/MediaSessionRecord;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$1:I

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$2:I

    iget v4, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$3:I

    iget-boolean v11, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$4:Z

    iget v12, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$5:I

    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$6:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$7:I

    iget v7, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$8:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v11, :cond_1

    const/4 p0, 0x0

    :try_start_0
    invoke-static {v2, p0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, v0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget v8, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual/range {v1 .. v8}, Landroid/media/AudioManager;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move p0, v4

    goto :goto_2

    :cond_0
    move p0, v4

    move-object v1, v5

    move v5, v3

    :try_start_1
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    move v8, v6

    or-int v6, p0, v12

    :try_start_2
    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    const/high16 v4, -0x80000000

    move v9, v7

    move-object v7, v1

    :try_start_3
    invoke-virtual/range {v3 .. v10}, Landroid/media/AudioManager;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;III)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    move v3, v5

    move-object v5, v7

    move v6, v8

    :goto_0
    move v4, p0

    goto :goto_2

    :catch_2
    move-exception v0

    move v3, v5

    move v6, v8

    :goto_1
    move-object v5, v1

    goto :goto_0

    :catch_3
    move-exception v0

    move v3, v5

    goto :goto_1

    :cond_1
    move p0, v4

    :try_start_4
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_5

    move v4, p0

    :try_start_5
    invoke-virtual/range {v1 .. v8}, Landroid/media/AudioManager;->adjustStreamVolumeForUid(IIILjava/lang/String;III)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_4

    return-void

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_0

    :goto_2
    const-string p0, "Cannot adjust volume: direction="

    const-string v1, ", stream="

    const-string v7, ", flags="

    invoke-static {v3, v2, p0, v1, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", opPackageName="

    const-string v2, ", uid="

    invoke-static {v4, v1, v5, v2, p0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useSuggested="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", previousFlagPlaySound="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "MediaSessionRecord"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
