.class public abstract Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public userIds:[I


# virtual methods
.method public exists(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;->userIds:[I

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final refreshUserIds()V
    .locals 2

    move-object v0, p0

    check-cast v0, Lcom/android/server/am/BatteryStatsService$3;

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$3;->umi:Lcom/android/server/pm/UserManagerInternal;

    if-nez v1, :cond_0

    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    iput-object v1, v0, Lcom/android/server/am/BatteryStatsService$3;->umi:Lcom/android/server/pm/UserManagerInternal;

    :cond_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService$3;->umi:Lcom/android/server/pm/UserManagerInternal;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;->userIds:[I

    return-void
.end method
