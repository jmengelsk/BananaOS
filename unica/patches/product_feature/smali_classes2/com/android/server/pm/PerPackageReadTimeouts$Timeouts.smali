.class public final Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEFAULT:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;


# instance fields
.field public final maxPendingTimeUs:J

.field public final minPendingTimeUs:J

.field public final minTimeUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    const-wide v3, 0xd693a400L

    const-wide v5, 0xd693a400L

    const-wide v1, 0xd693a400L

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;-><init>(JJJ)V

    sput-object v0, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->DEFAULT:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minTimeUs:J

    iput-wide p3, p0, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minPendingTimeUs:J

    iput-wide p5, p0, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->maxPendingTimeUs:J

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;
    .registers 13

    const-string v0, ":"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    sget-object v2, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->DEFAULT:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    if-eq v0, v1, :cond_d

    return-object v2

    :cond_d
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const-wide v3, 0xd693a400L

    :try_start_15
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_19} :catch_1b

    move-wide v6, v0

    goto :goto_1c

    :catch_1b
    move-wide v6, v3

    :goto_1c
    const/4 v0, 0x1

    aget-object v0, p0, v0

    :try_start_1f
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_23} :catch_25

    move-wide v8, v0

    goto :goto_26

    :catch_25
    move-wide v8, v3

    :goto_26
    const/4 v0, 0x2

    aget-object p0, p0, v0

    :try_start_29
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2d} :catch_2d

    :catch_2d
    move-wide v10, v3

    const-wide/16 v0, 0x0

    cmp-long p0, v0, v6

    if-gtz p0, :cond_42

    cmp-long p0, v6, v8

    if-gtz p0, :cond_42

    cmp-long p0, v8, v10

    if-gtz p0, :cond_42

    new-instance v5, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    invoke-direct/range {v5 .. v11}, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;-><init>(JJJ)V

    return-object v5

    :cond_42
    return-object v2
.end method
