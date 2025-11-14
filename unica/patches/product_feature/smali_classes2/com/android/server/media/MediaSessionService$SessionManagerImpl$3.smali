.class public final Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field public final synthetic val$asSystemService:Z

.field public final synthetic val$direction:I

.field public final synthetic val$flags:I

.field public final synthetic val$opPackageName:Ljava/lang/String;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$pid:I

.field public final synthetic val$suggestedStream:I

.field public final synthetic val$uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;ZLjava/lang/String;IIIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$asSystemService:Z

    iput-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$opPackageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$uid:I

    iput p5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$pid:I

    iput p6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$suggestedStream:I

    iput p7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$direction:I

    iput p8, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$flags:I

    iput-object p9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$asSystemService:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    :goto_0
    move-object v7, v0

    move v8, v1

    move v9, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$opPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$uid:I

    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$pid:I

    goto :goto_0

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v3, v0, Lcom/android/server/media/MediaSessionService;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$suggestedStream:I

    iget v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$direction:I

    iget v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$flags:I

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual/range {v3 .. v10}, Landroid/media/AudioManager;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot adjust volume: direction="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$direction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", suggestedStream="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$suggestedStream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", asSystemService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$asSystemService:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "MediaSessionService"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
