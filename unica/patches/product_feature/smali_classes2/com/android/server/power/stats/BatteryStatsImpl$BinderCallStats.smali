.class public Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public binderClass:Ljava/lang/Class;

.field public callCount:J

.field public methodName:Ljava/lang/String;

.field public recordedCallCount:J

.field public recordedCpuTimeMicros:J

.field public transactionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ensureMethodName(Lcom/android/internal/os/BinderTransactionNameResolver;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->methodName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/os/BinderTransactionNameResolver;->getMethodName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->methodName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    iget-object v2, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    iget p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BinderCallStats{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " transaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->callCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " recordedCallCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->recordedCallCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " recorderCpuTimeMicros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->recordedCpuTimeMicros:J

    const-string/jumbo p0, "}"

    invoke-static {v0, v1, v2, p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
