.class public abstract Lcom/android/server/profcollect/Utils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static lastTraceTime:Ljava/time/Instant;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    sput-object v0, Lcom/android/server/profcollect/Utils;->lastTraceTime:Ljava/time/Instant;

    return-void
.end method

.method public static checkPrerequisites(Lcom/android/server/profcollect/IProfCollectd;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p0

    sget-object v1, Lcom/android/server/profcollect/Utils;->lastTraceTime:Ljava/time/Instant;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p0

    sput-object p0, Lcom/android/server/profcollect/Utils;->lastTraceTime:Ljava/time/Instant;

    sget-boolean p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sVerityEnforced:Z

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sAdbActive:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIsInteractive:Z

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIsBatteryLow:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static withFrequency(ILjava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "profcollect_native_boot"

    invoke-static {v0, p1, p0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result p1

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
