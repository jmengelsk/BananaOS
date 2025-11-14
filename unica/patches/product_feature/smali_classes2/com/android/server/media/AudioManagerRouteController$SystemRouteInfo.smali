.class public final Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDefaultRouteId:Ljava/lang/String;

.field public final mMediaRoute2InfoType:I

.field public final mNameResource:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mMediaRoute2InfoType:I

    iput-object p3, p0, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mDefaultRouteId:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mNameResource:I

    return-void
.end method
