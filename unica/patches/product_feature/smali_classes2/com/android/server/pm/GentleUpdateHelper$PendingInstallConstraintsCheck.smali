.class public final Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final constraints:Landroid/content/pm/PackageInstaller$InstallConstraints;

.field public final future:Ljava/util/concurrent/CompletableFuture;

.field public final mFinishTime:J

.field public final packageNames:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Ljava/util/concurrent/CompletableFuture;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->packageNames:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->constraints:Landroid/content/pm/PackageInstaller$InstallConstraints;

    iput-object p3, p0, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->future:Ljava/util/concurrent/CompletableFuture;

    const-wide/32 p1, 0x240c8400

    invoke-static {p1, p2, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    add-long/2addr p3, p1

    iput-wide p3, p0, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->mFinishTime:J

    return-void
.end method
