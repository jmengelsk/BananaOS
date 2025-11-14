.class public final synthetic Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiWindowPointerEventListener;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    iput p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskFromPointSearchResult;

    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_5

    iget-object v4, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, p1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskFragment;->getDimBounds(Landroid/graphics/Rect;)V

    iget-object v5, p1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, p0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_3

    iput-object v4, v0, Lcom/android/server/wm/DisplayContent$TaskFromPointSearchResult;->mTask:Lcom/android/server/wm/Task;

    :cond_3
    iget v3, v4, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
