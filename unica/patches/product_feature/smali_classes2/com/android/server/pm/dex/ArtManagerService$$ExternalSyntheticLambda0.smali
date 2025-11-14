.class public final synthetic Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$1:Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    iput-object p3, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    const-string v2, "ArtManagerService"

    const-string v3, "Failed to call onSuccess after profile snapshot for "

    const-string/jumbo v4, "The snapshot FD became invalid before posting the result for "

    :try_start_d
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->valid()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface {v1, v0}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onSuccess(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_32

    :catchall_1b
    move-exception p0

    goto :goto_49

    :catch_1d
    move-exception v1

    goto :goto_36

    :cond_1f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_32} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_32} :catch_1d
    .catchall {:try_start_d .. :try_end_32} :catchall_1b

    :goto_32
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_36
    :try_start_36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_1b

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_49
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method
