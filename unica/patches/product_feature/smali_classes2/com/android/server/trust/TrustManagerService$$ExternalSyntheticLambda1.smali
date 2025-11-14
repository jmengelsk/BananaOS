.class public final synthetic Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/trust/TrustManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/trust/TrustManagerService;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/trust/TrustManagerService;

    iput p2, p0, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda1;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p0, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda1;->f$1:I

    iget-boolean p0, p0, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda1;->f$2:Z

    sget-object v2, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_b
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_2f

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/android/internal/policy/IDeviceLockedStateListener;

    invoke-interface {p1, p0}, Lcom/android/internal/policy/IDeviceLockedStateListener;->onDeviceLockedStateChanged(Z)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p0

    const-string/jumbo p1, "TrustManagerService"

    const-string/jumbo v0, "Service died"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    return-void
.end method
