.class public interface abstract Lcom/android/server/notification/NotificationSignalExtractor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public abstract initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
.end method

.method public abstract process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
.end method

.method public setCompatChangeLogger(Lcom/android/internal/compat/IPlatformCompat;)V
    .registers 2

    return-void
.end method

.method public abstract setConfig(Lcom/android/server/notification/RankingConfig;)V
.end method

.method public setGroupHelper(Lcom/android/server/notification/GroupHelper;)V
    .registers 2

    return-void
.end method

.method public abstract setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
.end method
