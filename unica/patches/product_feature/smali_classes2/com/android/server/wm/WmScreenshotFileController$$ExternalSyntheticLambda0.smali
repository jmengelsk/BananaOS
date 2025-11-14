.class public final synthetic Lcom/android/server/wm/WmScreenshotFileController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WmScreenshotFileController;

.field public final synthetic f$1:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WmScreenshotFileController;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotFileController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WmScreenshotFileController;

    iput-object p2, p0, Lcom/android/server/wm/WmScreenshotFileController$$ExternalSyntheticLambda0;->f$1:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    iput p3, p0, Lcom/android/server/wm/WmScreenshotFileController$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotFileController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WmScreenshotFileController;

    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotFileController$$ExternalSyntheticLambda0;->f$1:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    iget p0, p0, Lcom/android/server/wm/WmScreenshotFileController$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    if-nez v1, :cond_e

    move-object v1, v2

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_12
    if-nez v1, :cond_1d

    const-string/jumbo p0, "WindowManager"

    const-string v0, "Failed to take screenshot with rotation Layer in Transition"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d
    const-string/jumbo v3, "rotation"

    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/android/server/wm/WmScreenshotFileController;->saveBitmapToScreenshotFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/io/PrintWriter;I)V

    return-void
.end method
