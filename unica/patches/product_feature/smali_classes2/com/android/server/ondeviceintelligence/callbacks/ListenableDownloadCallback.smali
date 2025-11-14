.class public final Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;
.super Landroid/app/ondeviceintelligence/IDownloadCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final callback:Landroid/app/ondeviceintelligence/IDownloadCallback;

.field public final future:Lcom/android/internal/infra/AndroidFuture;

.field public final handler:Landroid/os/Handler;

.field public final idleTimeoutMs:J


# direct methods
.method public constructor <init>(Landroid/app/ondeviceintelligence/IDownloadCallback;Landroid/os/Handler;Lcom/android/internal/infra/AndroidFuture;J)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IDownloadCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->callback:Landroid/app/ondeviceintelligence/IDownloadCallback;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->future:Lcom/android/internal/infra/AndroidFuture;

    iput-wide p4, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->idleTimeoutMs:J

    invoke-virtual {p2, p0, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final onDownloadCompleted(Landroid/os/PersistableBundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->callback:Landroid/app/ondeviceintelligence/IDownloadCallback;

    invoke-interface {v0, p1}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadCompleted(Landroid/os/PersistableBundle;)V

    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->future:Lcom/android/internal/infra/AndroidFuture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onDownloadFailed(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->callback:Landroid/app/ondeviceintelligence/IDownloadCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadFailed(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->future:Lcom/android/internal/infra/AndroidFuture;

    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final onDownloadProgress(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->callback:Landroid/app/ondeviceintelligence/IDownloadCallback;

    invoke-interface {v0, p1, p2}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadProgress(J)V

    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->handler:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->idleTimeoutMs:J

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onDownloadStarted(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->callback:Landroid/app/ondeviceintelligence/IDownloadCallback;

    invoke-interface {v0, p1, p2}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadStarted(J)V

    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->handler:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->idleTimeoutMs:J

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->future:Lcom/android/internal/infra/AndroidFuture;

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method
