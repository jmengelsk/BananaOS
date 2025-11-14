.class public final Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallback:Landroid/media/session/ISessionControllerCallback;

.field public final mDeathMonitor:Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;

.field public final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;

    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mDeathMonitor:Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;

    return-void
.end method
