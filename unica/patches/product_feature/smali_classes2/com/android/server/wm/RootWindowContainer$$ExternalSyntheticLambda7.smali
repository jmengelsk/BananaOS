.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 10

    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/RootWindowContainer;

    packed-switch v0, :pswitch_data_c6

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->onProcessActivityStateChanged(Lcom/android/server/wm/WindowProcessController;Z)V

    :cond_1a
    return-void

    :pswitch_1b  #0x1
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_2b

    :try_start_24
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    invoke-interface {p1, p0}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2b} :catch_2b

    :catch_2b
    :cond_2b
    return-void

    :pswitch_2c  #0x0
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    iget v1, p1, Lcom/android/server/wm/Task;->mNonOccludedFreeformAreaRatio:I

    const/4 v2, 0x0

    iput v2, p1, Lcom/android/server/wm/Task;->mNonOccludedFreeformAreaRatio:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_b0

    iget v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    iput v3, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_b3

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpOccludingRegion:Landroid/graphics/Region;

    if-nez v3, :cond_5e

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpOccludingRegion:Landroid/graphics/Region;

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskRegion:Landroid/graphics/Region;

    :cond_5e
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskRegion:Landroid/graphics/Region;

    iget-object v5, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpOccludingRegion:Landroid/graphics/Region;

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskRegion:Landroid/graphics/Region;

    new-instance v5, Landroid/graphics/RegionIterator;

    invoke-direct {v5, v4}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    :goto_89
    invoke-virtual {v5, v4}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_9a

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v2, v7

    goto :goto_89

    :cond_9a
    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v5, v4

    div-int/2addr v2, v5

    iput v2, p1, Lcom/android/server/wm/Task;->mNonOccludedFreeformAreaRatio:I

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpOccludingRegion:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_b3

    :cond_b0
    const/4 v2, -0x1

    iput v2, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    :cond_b3
    :goto_b3
    iget v2, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    if-ne v2, v0, :cond_bb

    iget v0, p1, Lcom/android/server/wm/Task;->mNonOccludedFreeformAreaRatio:I

    if-eq v0, v1, :cond_c4

    :cond_bb
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/RootWindowContainer;I)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_c4
    return-void

    nop

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_2c  #00000000
        :pswitch_1b  #00000001
    .end packed-switch
.end method
