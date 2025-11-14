.class public final Lcom/android/server/trust/TrustManagerService$2$1;
.super Landroid/hardware/location/ISignificantPlaceProviderManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$1:Lcom/android/server/trust/TrustManagerService$2;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$2$1;->this$1:Lcom/android/server/trust/TrustManagerService$2;

    invoke-direct {p0}, Landroid/hardware/location/ISignificantPlaceProviderManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final setInSignificantPlace(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2$1;->this$1:Lcom/android/server/trust/TrustManagerService$2;

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    sget-object p1, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
