.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$1:J

    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$2:J

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$1:J

    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$2:J

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->isIsolated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;->exists(I)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object p0

    if-ne v1, p1, :cond_2

    sget-object p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->sTempBinderCallStats:Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getCpuActiveTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;->cpuActiveCounter:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getCpuActiveTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    invoke-static {p0, p1, p2, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mincrement(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;JJ)V

    :cond_4
    :goto_0
    return-void
.end method
