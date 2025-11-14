.class public final synthetic Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallRequest;

.field public final synthetic f$1:Lcom/android/server/pm/dex/DexManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/dex/DexManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/pm/InstallRequest;

    iput-object p2, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda14;->f$1:Lcom/android/server/pm/dex/DexManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/pm/InstallRequest;

    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda14;->f$1:Lcom/android/server/pm/dex/DexManager;

    const-wide/32 v1, 0x40000

    :try_start_7
    const-string/jumbo v3, "dexopt"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v0, p0}, Lcom/android/server/pm/DexOptHelper;->getDexoptOptionsByInstallRequest(Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/dex/DexManager;)Lcom/android/server/pm/dex/DexoptOptions;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/pm/DexOptHelper;->dexoptPackageUsingArtService(Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/dex/DexoptOptions;)Lcom/android/server/art/model/DexoptResult;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/InstallRequest;->onDexoptFinished(Lcom/android/server/art/model/DexoptResult;)V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1c

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method
