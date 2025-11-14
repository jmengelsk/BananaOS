.class public final Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/sensors/SensorService;


# direct methods
.method public constructor <init>(Lcom/android/server/sensors/SensorService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;->this$0:Lcom/android/server/sensors/SensorService;

    return-void
.end method


# virtual methods
.method public final onProximityActive(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;->this$0:Lcom/android/server/sensors/SensorService;

    iget-object v0, v0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;->this$0:Lcom/android/server/sensors/SensorService;

    iget-object p0, p0, Lcom/android/server/sensors/SensorService;->mProximityListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/android/server/sensors/SensorService$ProximityListenerProxy;

    invoke-interface {p0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/sensors/SensorService$ProximityListenerProxy;

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_23

    array-length v0, p0

    :goto_18
    if-ge v1, v0, :cond_22

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;->onProximityActive(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_22
    return-void

    :catchall_23
    move-exception p0

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method
