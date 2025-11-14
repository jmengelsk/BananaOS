.class public final Lcom/android/server/pm/StagingManager$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sStagingManager:Lcom/android/server/pm/StagingManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .registers 5

    const/16 p0, 0x3e8

    if-ne p1, p0, :cond_5f

    sget-object p0, Lcom/android/server/pm/StagingManager$Lifecycle;->sStagingManager:Lcom/android/server/pm/StagingManager;

    if-eqz p0, :cond_5f

    iget-object p1, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    monitor-enter p1

    const/4 v0, 0x0

    :goto_c
    :try_start_c
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :catchall_2c
    move-exception p0

    goto :goto_5d

    :cond_2e
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_41

    const-string/jumbo p0, "sys.staged_apex.state"

    const-string/jumbo v0, "success"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    monitor-exit p1
    :try_end_42
    .catchall {:try_start_c .. :try_end_42} :catchall_2c

    sget-object p0, Lcom/android/server/pm/StagingManager$Lifecycle;->sStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    check-cast p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_4b
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0}, Landroid/apex/IApexService;->markBootCompleted()V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_52} :catch_53

    goto :goto_5f

    :catch_53
    move-exception p0

    const-string p1, "ApexManager"

    const-string/jumbo v0, "Unable to contact apexservice"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    :goto_5d
    :try_start_5d
    monitor-exit p1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_2c

    throw p0

    :cond_5f
    :goto_5f
    return-void
.end method

.method public final onStart()V
    .registers 1

    return-void
.end method
