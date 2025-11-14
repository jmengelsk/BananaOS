.class public final synthetic Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DragState;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DragState;FFZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DragState;

    iput p2, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;->f$1:F

    iput p3, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;->f$2:F

    iput-boolean p4, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DragState;

    iget v2, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;->f$1:F

    iget v3, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;->f$2:F

    iget-boolean v4, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;->f$3:Z

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/WindowState;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZZ)V

    return-void
.end method
