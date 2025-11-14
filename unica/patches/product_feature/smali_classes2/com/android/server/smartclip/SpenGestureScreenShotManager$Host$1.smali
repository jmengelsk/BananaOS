.class public final Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$containsTargetSystemWindow:Z

.field public final synthetic val$displayId:I

.field public final synthetic val$height:I

.field public final synthetic val$sourceCrop:Landroid/graphics/Rect;

.field public final synthetic val$targetWindowType:I

.field public final synthetic val$useIdentityTransform:Z

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(IIZLandroid/graphics/Rect;IIZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$displayId:I

    iput p2, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$targetWindowType:I

    iput-boolean p3, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$containsTargetSystemWindow:Z

    iput-object p4, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$sourceCrop:Landroid/graphics/Rect;

    iput p5, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$width:I

    iput p6, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$height:I

    iput-boolean p7, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$useIdentityTransform:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 9

    new-instance v0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;

    iget-object v4, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$sourceCrop:Landroid/graphics/Rect;

    iget-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$containsTargetSystemWindow:Z

    iget v5, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$width:I

    iget v1, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$displayId:I

    iget v2, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$targetWindowType:I

    iget v6, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$height:I

    iget-boolean v7, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$useIdentityTransform:Z

    invoke-direct/range {v0 .. v7}, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;-><init>(IIZLandroid/graphics/Rect;IIZ)V

    return-object v0
.end method
