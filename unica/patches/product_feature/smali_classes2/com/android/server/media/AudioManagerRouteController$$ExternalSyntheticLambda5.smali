.class public final synthetic Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/AudioManagerRouteController;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    iput-object p2, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    iget-object v1, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_9
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    return-void

    :catchall_d
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected exception while transferring to route id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "MR2SystemProvider"

    invoke-static {v2, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, v0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
