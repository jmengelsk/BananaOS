.class public interface abstract Lcom/android/server/media/DeviceRouteController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public abstract getAvailableRoutes()Ljava/util/List;
.end method

.method public abstract getSelectedRoute()Landroid/media/MediaRoute2Info;
.end method

.method public abstract start(Landroid/os/UserHandle;)V
.end method

.method public abstract stop()V
.end method

.method public abstract transferTo(Ljava/lang/String;)V
.end method

.method public abstract updateVolume(I)Z
.end method
