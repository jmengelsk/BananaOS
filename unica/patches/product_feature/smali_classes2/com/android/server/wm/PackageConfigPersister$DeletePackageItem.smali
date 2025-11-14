.class public final Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;->mUserId:I

    iput-object p2, p0, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final process()V
    .locals 5

    new-instance v0, Ljava/io/File;

    iget v1, p0, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;->mUserId:I

    invoke-static {v1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "package_configs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;->mPackageName:Ljava/lang/String;

    const-string/jumbo v4, "_config.xml"

    invoke-static {v3, p0, v4}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    :cond_1
    :goto_0
    return-void
.end method
