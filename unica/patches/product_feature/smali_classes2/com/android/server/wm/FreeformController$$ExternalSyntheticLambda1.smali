.class public final synthetic Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/FreeformController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FreeformController;ZZLandroid/graphics/Rect;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/FreeformController;

    iput-boolean p2, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda1;->f$1:Z

    iput-boolean p3, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda1;->f$2:Z

    iput-object p4, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda1;->f$3:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/FreeformController;

    iget-boolean v1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda1;->f$1:Z

    iget-boolean v2, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda1;->f$2:Z

    iget-object v5, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda1;->f$3:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 v3, 0x5

    if-ne p0, v3, :cond_58

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result p0

    if-nez p0, :cond_58

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result p0

    if-nez p0, :cond_58

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object p0, v0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v1, :cond_32

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/MultiWindowFoldController;->getCoverDisplayBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_38

    :cond_32
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/MultiWindowFoldController;->getMainDisplayBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    :goto_38
    if-eqz v1, :cond_44

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/MultiWindowFoldController;->getMainDisplayBounds(Z)Landroid/graphics/Rect;

    move-result-object p0

    :goto_40
    move-object v1, p1

    move-object v2, v3

    move-object v3, p0

    goto :goto_4b

    :cond_44
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/MultiWindowFoldController;->getCoverDisplayBounds(Z)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_40

    :goto_4b
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/FreeformController;->calculateFreeformBoundsForLidStateChanged(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_58

    const/4 p0, 0x0

    invoke-virtual {v1, p0, v5}, Lcom/android/server/wm/Task;->resize(ILandroid/graphics/Rect;)V

    :cond_58
    return-void
.end method
