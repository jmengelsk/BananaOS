.class public final Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDebugInfo:Ljava/lang/String;

.field public final mLaunchCount:I

.field public final mTaskId:I

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/wm/BackgroundActivityStartController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    iget-object v0, p1, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    iput v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mTaskId:I

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    invoke-virtual {p2, v3}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mLaunchCount:I

    add-int/2addr v2, v0

    :cond_1
    :goto_0
    iput v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mLaunchCount:I

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugStringForActivityRecord(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mDebugInfo:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance p2, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;I)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
