.class public final Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;


# instance fields
.field public idForResponseEvent:J

.field public sourceUid:I

.field public targetPackage:Ljava/lang/String;

.field public targetUidProcessState:I

.field public targetUserId:I

.field public timestampMs:J


# virtual methods
.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetPackage:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->sourceUid:I

    iget-object v3, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetPackage:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetUserId:I

    iget-wide v4, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->idForResponseEvent:J

    iget-wide v6, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->timestampMs:J

    iget p0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetUidProcessState:I

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p0}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v1

    move-object v1, v2

    move-object v2, v0

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "broadcast:%s; srcUid=%d, tgtPkg=%s, tgtUsr=%d, id=%d, state=%s"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
