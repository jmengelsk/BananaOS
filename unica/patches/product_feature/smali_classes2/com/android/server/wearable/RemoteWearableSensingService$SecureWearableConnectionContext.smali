.class public final Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mSecureConnection:Landroid/os/ParcelFileDescriptor;

.field public final mStatusCallback:Landroid/os/RemoteCallback;

.field public final mWearableSensingCallback:Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;Landroid/os/RemoteCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mSecureConnection:Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mWearableSensingCallback:Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;

    iput-object p3, p0, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mStatusCallback:Landroid/os/RemoteCallback;

    return-void
.end method
