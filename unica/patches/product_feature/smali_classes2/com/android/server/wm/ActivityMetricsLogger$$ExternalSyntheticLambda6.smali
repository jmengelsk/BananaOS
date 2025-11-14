.class public final synthetic Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(JLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowManagerService;I)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;->f$0:J

    iput-object p3, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    iput p5, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;->f$3:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;JLcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;I)V
    .registers 7

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;->f$0:J

    iput-object p4, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    iput p5, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_40

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityMetricsLogger;

    iget-wide v3, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;->f$0:J

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    iget v6, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;->f$3:I

    iget-object p0, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v0, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v7, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    const/4 v2, 0x4

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/app/ActivityManagerInternal;->addStartInfoTimestamp(IJIII)V

    return-void

    :pswitch_25  #0x0
    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;->f$0:J

    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/wm/WindowManagerService;

    iget p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;->f$3:I

    iget-wide v4, v2, Lcom/android/server/wm/ActivityRecord;->topResumedStateLossTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_38

    goto :goto_3f

    :cond_38
    iget-object v0, v3, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/util/LatencyTracker;->logAction(II)V

    :goto_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_25  #00000000
    .end packed-switch
.end method
