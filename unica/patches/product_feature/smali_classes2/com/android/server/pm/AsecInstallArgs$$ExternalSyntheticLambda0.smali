.class public final synthetic Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AsecInstallArgs;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AsecInstallArgs;ZI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AsecInstallArgs;

    iput-boolean p2, p0, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;->f$1:Z

    iput p3, p0, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AsecInstallArgs;

    iget-boolean v1, p0, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;->f$1:Z

    iget p0, p0, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;->f$2:I

    iget-object v2, v0, Lcom/android/server/pm/AsecInstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v2

    add-int/lit8 p0, p0, 0x1

    :try_start_f
    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/AsecInstallArgs;->pendingPostDeleteLI(IZ)Z

    monitor-exit v2

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_14

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method
