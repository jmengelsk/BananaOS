.class public final Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public hashCode:I

.field public powerManagerWakeLockLevel:I

.field public tag:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->uid:I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->tag:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->powerManagerWakeLockLevel:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p3, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->hashCode:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    iget v2, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->uid:I

    iget v3, p1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->uid:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget p0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->powerManagerWakeLockLevel:I

    iget p1, p1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->powerManagerWakeLockLevel:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->hashCode:I

    return p0
.end method

.method public final setHardCap()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->uid:I

    const-string v1, "*overflow hard cap*"

    iput-object v1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->tag:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->powerManagerWakeLockLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->tag:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->powerManagerWakeLockLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->hashCode:I

    return-void
.end method
