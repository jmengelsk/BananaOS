.class public final Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;
.super Landroid/os/FileObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 0

    const/16 p0, 0xabc

    invoke-static {p0, p2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method
