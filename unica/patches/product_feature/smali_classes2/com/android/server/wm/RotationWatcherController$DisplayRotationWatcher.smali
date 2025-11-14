.class public final Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;
.super Lcom/android/server/wm/RotationWatcherController$RotationWatcher;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDisplayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;)V

    iput p3, p0, Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;->mDisplayId:I

    return-void
.end method
