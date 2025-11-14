.class public final Lcom/android/server/wm/TspStateController$DeviceSize;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public height:I

.field public initHeight:I

.field public initWidth:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    iput v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    iput v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->width:I

    iput v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    return-void
.end method
