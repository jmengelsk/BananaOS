.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/util/List;)V
    .locals 0

    iput p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;->$r8$classId:I

    iput-object p3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;->f$0:Ljava/util/List;

    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;->f$0:Ljava/util/List;

    iget p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;->f$1:I

    check-cast p2, [J

    sget v3, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    aget-wide v3, p2, v1

    invoke-static {p0, p1, v1, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;->f$0:Ljava/util/List;

    iget v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;->f$1:I

    check-cast p2, [J

    sget p0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    aget-wide v5, p2, v1

    aget-wide v7, p2, v0

    move v4, p1

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    move v4, p1

    iget-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;->f$0:Ljava/util/List;

    iget p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;->f$1:I

    check-cast p2, Ljava/lang/Long;

    sget v0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v4, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
