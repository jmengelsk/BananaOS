.class public final synthetic Lcom/android/server/wm/RemoteDisplayChangeController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RemoteDisplayChangeController$1;

.field public final synthetic f$1:Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;

.field public final synthetic f$2:Landroid/window/WindowContainerTransaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RemoteDisplayChangeController$1;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;Landroid/window/WindowContainerTransaction;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RemoteDisplayChangeController$1;

    iput-object p2, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;

    iput-object p3, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1$$ExternalSyntheticLambda0;->f$2:Landroid/window/WindowContainerTransaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RemoteDisplayChangeController$1;

    iget-object v1, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;

    iget-object p0, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1$$ExternalSyntheticLambda0;->f$2:Landroid/window/WindowContainerTransaction;

    iget-object v0, v0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/RemoteDisplayChangeController;->continueDisplayChange(Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method
