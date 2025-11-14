.class public final Lcom/android/server/sensors/SensorService$ProximityListenerProxy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mListener:Lcom/android/server/display/mode/ProximitySensorObserver;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/server/display/mode/ProximitySensorObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;->mListener:Lcom/android/server/display/mode/ProximitySensorObserver;

    return-void
.end method


# virtual methods
.method public final onProximityActive(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/sensors/SensorService$ProximityListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sensors/SensorService$ProximityListenerProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensors/SensorService$ProximityListenerProxy;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
