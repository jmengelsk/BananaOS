.class public final Lcom/android/server/telecom/InternalServiceRepository;
.super Lcom/android/internal/telecom/IInternalServiceRetriever$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field public final mDeviceIdleControllerAdapter:Lcom/android/server/telecom/InternalServiceRepository$1;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleInternal;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telecom/IInternalServiceRetriever$Stub;-><init>()V

    new-instance v0, Lcom/android/server/telecom/InternalServiceRepository$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/InternalServiceRepository$1;-><init>(Lcom/android/server/telecom/InternalServiceRepository;)V

    iput-object v0, p0, Lcom/android/server/telecom/InternalServiceRepository;->mDeviceIdleControllerAdapter:Lcom/android/server/telecom/InternalServiceRepository$1;

    iput-object p1, p0, Lcom/android/server/telecom/InternalServiceRepository;->mDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    return-void
.end method


# virtual methods
.method public final getDeviceIdleController()Lcom/android/internal/telecom/IDeviceIdleControllerAdapter;
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/telecom/InternalServiceRepository;->mDeviceIdleControllerAdapter:Lcom/android/server/telecom/InternalServiceRepository$1;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "SYSTEM ONLY API."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
