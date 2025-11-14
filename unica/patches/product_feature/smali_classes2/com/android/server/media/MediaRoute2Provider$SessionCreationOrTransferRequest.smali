.class public final Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mRequestId:J

.field public final mTargetOriginalRouteId:Ljava/lang/String;

.field public final mTransferInitiatorPackageName:Ljava/lang/String;

.field public final mTransferInitiatorUserHandle:Landroid/os/UserHandle;

.field public final mTransferReason:I


# direct methods
.method public constructor <init>(JLjava/lang/String;ILandroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mRequestId:J

    iput-object p3, p0, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTransferReason:I

    iput-object p5, p0, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    iput-object p6, p0, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTransferInitiatorPackageName:Ljava/lang/String;

    return-void
.end method
