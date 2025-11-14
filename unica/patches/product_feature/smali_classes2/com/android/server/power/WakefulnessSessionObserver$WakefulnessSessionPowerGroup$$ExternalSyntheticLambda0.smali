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
    .registers 7

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
    .registers 9

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

    packed-switch v1, :pswitch_data_30

    const/4 v1, 0x0

    :goto_19
    move v4, v1

    goto :goto_27

    :pswitch_1b  #0x6
    const/4 v1, 0x6

    goto :goto_19

    :pswitch_1d  #0x5
    const/4 v1, 0x5

    goto :goto_19

    :pswitch_1f  #0x4
    const/4 v1, 0x4

    goto :goto_19

    :pswitch_21  #0x3
    const/4 v1, 0x3

    goto :goto_19

    :pswitch_23  #0x2
    const/4 v1, 0x2

    goto :goto_19

    :pswitch_25  #0x1
    const/4 v1, 0x1

    goto :goto_19

    :goto_27
    const/16 v1, 0x363

    move v2, p0

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIII)V

    iput v6, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    return-void

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_25  #00000001
        :pswitch_23  #00000002
        :pswitch_21  #00000003
        :pswitch_1f  #00000004
        :pswitch_1d  #00000005
        :pswitch_1b  #00000006
    .end packed-switch
.end method
