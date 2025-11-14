.class public final Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;


# instance fields
.field public packageName:Ljava/lang/String;

.field public timestampMs:J

.field public type:I

.field public userId:I


# virtual methods
.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->packageName:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->type:I

    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->userId:I

    iget-wide v3, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->timestampMs:J

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->getNotificationEventLog(IIJLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
