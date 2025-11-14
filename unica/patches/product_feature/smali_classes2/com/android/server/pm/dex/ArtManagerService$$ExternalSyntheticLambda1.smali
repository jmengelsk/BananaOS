.class public final synthetic Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    iput p1, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    iget v1, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;->f$1:I

    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    :try_start_0
    invoke-interface {v0, v1}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to callback after profile snapshot for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ArtManagerService"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
