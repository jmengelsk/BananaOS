.class public final synthetic Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/HashSet;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$0:Ljava/util/HashSet;

    iput p2, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$0:Ljava/util/HashSet;

    iget v1, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$2:Z

    iget-boolean p0, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$3:Z

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;

    invoke-interface {v3, v1, v2, p0}, Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;->onTransientSystemBarsVisibilityChanged(IZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method
