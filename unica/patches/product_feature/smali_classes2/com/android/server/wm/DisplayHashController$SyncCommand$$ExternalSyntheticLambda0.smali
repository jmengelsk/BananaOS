.class public final synthetic Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/DisplayHashController$Command;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayHashController$SyncCommand;

.field public final synthetic f$1:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayHashController$SyncCommand;Ljava/util/function/BiConsumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayHashController$SyncCommand;

    iput-object p2, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final run(Landroid/service/displayhash/IDisplayHashingService;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/BiConsumer;

    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayHashController$SyncCommand;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayHashController$SyncCommand;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
