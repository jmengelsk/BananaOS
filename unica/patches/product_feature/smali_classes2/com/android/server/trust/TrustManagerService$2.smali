.class public final Lcom/android/server/trust/TrustManagerService$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V
    .registers 3

    check-cast p2, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    invoke-static {p1}, Landroid/hardware/location/ISignificantPlaceProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/ISignificantPlaceProvider;

    move-result-object p1

    new-instance p2, Lcom/android/server/trust/TrustManagerService$2$1;

    invoke-direct {p2, p0}, Lcom/android/server/trust/TrustManagerService$2$1;-><init>(Lcom/android/server/trust/TrustManagerService$2;)V

    invoke-interface {p1, p2}, Landroid/hardware/location/ISignificantPlaceProvider;->setSignificantPlaceProviderManager(Landroid/hardware/location/ISignificantPlaceProviderManager;)V

    return-void
.end method

.method public final onUnbind()V
    .registers 2

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    sget-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
