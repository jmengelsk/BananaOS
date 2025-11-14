.class public final synthetic Lcom/android/server/sensors/SensorService$ProximityListenerProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sensors/SensorService$ProximityListenerProxy;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sensors/SensorService$ProximityListenerProxy;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sensors/SensorService$ProximityListenerProxy;

    iput-boolean p2, p0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sensors/SensorService$ProximityListenerProxy;

    iget-boolean p0, p0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v0, v0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;->mListener:Lcom/android/server/display/mode/ProximitySensorObserver;

    invoke-virtual {v0, p0}, Lcom/android/server/display/mode/ProximitySensorObserver;->onProximityActive(Z)V

    return-void
.end method
