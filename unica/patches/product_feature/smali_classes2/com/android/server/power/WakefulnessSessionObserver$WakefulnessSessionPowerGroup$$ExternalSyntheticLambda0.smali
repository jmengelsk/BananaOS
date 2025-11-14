.class public final synthetic Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    iput p2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;->f$4:I

    iput p6, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    iget v3, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;->f$1:I

    iget v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;->f$2:I

    iget v5, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;->f$3:I

    iget v6, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;->f$4:I

    iget v7, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;->f$5:I

    iget-object p0, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v2, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    iget p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPhysicalDisplayPortIdForDefaultDisplay:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    move v4, v1

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x1

    goto :goto_0

    :goto_1
    const/16 v1, 0x363

    move v2, p0

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIII)V

    iput v6, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
