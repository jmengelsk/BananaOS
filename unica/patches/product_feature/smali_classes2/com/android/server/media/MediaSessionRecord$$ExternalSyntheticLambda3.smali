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
    .registers 10

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
    .registers 14

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

    if-eqz v11, :cond_55

    const/4 p0, 0x0

    :try_start_18
    invoke-static {v2, p0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result p0

    if-eqz p0, :cond_2f

    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, v0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget v8, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual/range {v1 .. v8}, Landroid/media/AudioManager;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;III)V
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception v0

    move p0, v4

    goto :goto_69

    :cond_2f
    move p0, v4

    move-object v1, v5

    move v5, v3

    :try_start_32
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_34} :catch_52
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_34} :catch_52

    move v8, v6

    or-int v6, p0, v12

    :try_start_37
    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_3f} :catch_4d
    .catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_3f} :catch_4d

    const/high16 v4, -0x80000000

    move v9, v7

    move-object v7, v1

    :try_start_43
    invoke-virtual/range {v3 .. v10}, Landroid/media/AudioManager;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;III)V
    :try_end_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_43 .. :try_end_46} :catch_47
    .catch Ljava/lang/SecurityException; {:try_start_43 .. :try_end_46} :catch_47

    return-void

    :catch_47
    move-exception v0

    move v3, v5

    move-object v5, v7

    move v6, v8

    :goto_4b
    move v4, p0

    goto :goto_69

    :catch_4d
    move-exception v0

    move v3, v5

    move v6, v8

    :goto_50
    move-object v5, v1

    goto :goto_4b

    :catch_52
    move-exception v0

    move v3, v5

    goto :goto_50

    :cond_55
    move p0, v4

    :try_start_56
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_56 .. :try_end_60} :catch_67
    .catch Ljava/lang/SecurityException; {:try_start_56 .. :try_end_60} :catch_67

    move v4, p0

    :try_start_61
    invoke-virtual/range {v1 .. v8}, Landroid/media/AudioManager;->adjustStreamVolumeForUid(IIILjava/lang/String;III)V
    :try_end_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_61 .. :try_end_64} :catch_65
    .catch Ljava/lang/SecurityException; {:try_start_61 .. :try_end_64} :catch_65

    return-void

    :catch_65
    move-exception v0

    goto :goto_69

    :catch_67
    move-exception v0

    goto :goto_4b

    :goto_69
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
