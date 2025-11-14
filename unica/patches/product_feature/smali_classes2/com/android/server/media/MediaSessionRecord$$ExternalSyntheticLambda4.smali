.class public final synthetic Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaSessionRecord;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/media/MediaSessionRecord;

    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;->f$2:I

    iput p4, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;->f$3:I

    iput p5, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;->f$4:I

    iput p6, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;->f$5:I

    iput p7, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;->f$2:I

    iget v6, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;->f$3:I

    iget v4, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;->f$4:I

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;->f$5:I

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;->f$6:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, v0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget v8, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual/range {v1 .. v8}, Landroid/media/AudioManager;->setStreamVolumeForUid(IIILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string v0, "Cannot set volume: stream="

    const-string v1, ", value="

    const-string v5, ", flags="

    invoke-static {v2, v3, v0, v1, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MediaSessionRecord"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
