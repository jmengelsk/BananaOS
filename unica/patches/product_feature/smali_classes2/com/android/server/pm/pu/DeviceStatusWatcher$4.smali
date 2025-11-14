.class public final Lcom/android/server/pm/pu/DeviceStatusWatcher$4;
.super Lcom/android/server/wm/ActivityMetricsLaunchObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/pu/DeviceStatusWatcher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$4;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    return-void
.end method


# virtual methods
.method public final onActivityLaunched(IIJLandroid/content/ComponentName;)V
    .registers 6

    iget-object p0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$4;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    iget-object p0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    iget-object p0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/pm/pu/HotAppsWrapper;->mGeneratedApps:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto :goto_1d

    :cond_13
    iget-object p2, p0, Lcom/android/server/pm/pu/HotAppsWrapper;->mLaunchedApps:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    :goto_1d
    return-void

    :cond_1e
    iget-object p0, p0, Lcom/android/server/pm/pu/HotAppsWrapper;->mLaunchedApps:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
