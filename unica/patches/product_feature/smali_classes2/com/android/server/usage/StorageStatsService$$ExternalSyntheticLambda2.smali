.class public final synthetic Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/PackageStats;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/UserHandle;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;->f$0:Landroid/content/pm/PackageStats;

    iput-object p2, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;->f$2:Landroid/os/UserHandle;

    iput-boolean p4, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;->f$0:Landroid/content/pm/PackageStats;

    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;->f$2:Landroid/os/UserHandle;

    iget-boolean p0, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;->f$3:Z

    check-cast p1, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;

    invoke-interface {p1, v0, v1, v2, p0}, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;->augmentStatsForPackageForUser(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void
.end method
