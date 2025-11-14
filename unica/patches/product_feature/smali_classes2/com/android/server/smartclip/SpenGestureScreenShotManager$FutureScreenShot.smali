.class public Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;
.super Ljava/util/concurrent/FutureTask;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/smartclip/SpenGestureScreenShotManager$ScreenShot;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;",
        ">;",
        "Lcom/android/server/smartclip/SpenGestureScreenShotManager$ScreenShot;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method
