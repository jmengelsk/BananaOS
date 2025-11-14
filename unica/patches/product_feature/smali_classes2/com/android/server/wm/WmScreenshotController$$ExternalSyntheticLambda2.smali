.class public final synthetic Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WmScreenshotController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WmScreenshotController;Z[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WmScreenshotController;

    iput-boolean p2, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;->f$2:[Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WmScreenshotController;

    iget-boolean v1, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;->f$1:Z

    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;->f$2:[Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "invalidateForScreenShot forceMode="

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    const-string/jumbo v4, "WindowManager"

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result v2

    if-eq v2, v6, :cond_0

    if-ne v2, v5, :cond_2

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "isHdrColorMode w="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " colorMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v2, v3

    :cond_2
    :goto_0
    if-eq v2, v6, :cond_3

    if-ne v2, v5, :cond_4

    :cond_3
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " w="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p1, v1}, Landroid/view/IWindow;->invalidateForScreenShot(Z)V

    const/4 p1, 0x1

    aput-boolean p1, p0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Exception "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v4}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
