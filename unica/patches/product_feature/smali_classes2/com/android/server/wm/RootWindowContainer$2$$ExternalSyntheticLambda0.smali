.class public final synthetic Lcom/android/server/wm/RootWindowContainer$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer$2;

.field public final synthetic f$1:Lcom/android/server/wm/RootWindowContainer$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer$2;Lcom/android/server/wm/RootWindowContainer$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RootWindowContainer$2;

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$2$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/RootWindowContainer$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RootWindowContainer$2;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$2$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/RootWindowContainer$2;

    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Lcom/android/server/wm/RootWindowContainer$2;

    if-eq p0, v2, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    iput-object p0, v1, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Lcom/android/server/wm/RootWindowContainer$2;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer$2;->run()V

    return-void
.end method
