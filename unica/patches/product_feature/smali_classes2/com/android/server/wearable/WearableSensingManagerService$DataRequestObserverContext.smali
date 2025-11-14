.class public final Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDataRequestObserverId:I

.field public final mDataRequestPendingIntent:Landroid/app/PendingIntent;

.field public final mDataRequestRemoteCallback:Landroid/os/RemoteCallback;

.field public final mDataType:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(IIILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataType:I

    iput p2, p0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mUserId:I

    iput p3, p0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestObserverId:I

    iput-object p4, p0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestPendingIntent:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestRemoteCallback:Landroid/os/RemoteCallback;

    return-void
.end method
