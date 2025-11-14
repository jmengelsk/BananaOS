.class public final synthetic Lcom/android/server/power/stats/PowerStatsCollector$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;II)V
    .locals 0

    iput p3, p0, Lcom/android/server/power/stats/PowerStatsCollector$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;

    iput p2, p0, Lcom/android/server/power/stats/PowerStatsCollector$1$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;

    check-cast v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget p0, p0, Lcom/android/server/power/stats/PowerStatsCollector$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseLongArray;->delete(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;

    check-cast v0, Lcom/android/server/power/stats/PowerStatsCollector$1;

    iget p0, p0, Lcom/android/server/power/stats/PowerStatsCollector$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/android/server/power/stats/PowerStatsCollector$1;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/PowerStatsCollector;->onUidRemoved(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
