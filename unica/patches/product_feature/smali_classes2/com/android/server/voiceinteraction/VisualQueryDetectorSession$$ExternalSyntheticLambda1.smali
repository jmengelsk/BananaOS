.class public final synthetic Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    const-string/jumbo v7, "Providing query detection result from VisualQueryDetectionService to VoiceInteractionService"

    iget v3, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;->f$3:I

    iget-object p0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_c
    iget-object v2, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    invoke-static {v2, v4, v1, v7}, Lcom/android/server/voiceinteraction/DetectorSession;->enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    iget v4, v0, Landroid/media/permission/Identity;->uid:I

    iget-object v5, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/media/permission/Identity;->attributionTag:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw v0
.end method
