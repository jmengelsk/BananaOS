.class public final Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDirName:Ljava/lang/String;

.field public final mDirectoryResolver:Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda3;

.field public final mEnableLowResSnapshots:Z

.field public final mLowResScaleFactor:F

.field public final mUse16BitFormat:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda3;Ljava/lang/String;ZFZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mDirectoryResolver:Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda3;

    iput-object p2, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mDirName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mEnableLowResSnapshots:Z

    iput p4, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mLowResScaleFactor:F

    iput-boolean p5, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mUse16BitFormat:Z

    return-void
.end method


# virtual methods
.method public final getBaseDirectory(I)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mDirectoryResolver:Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mDirName:Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getHighResolutionBitmapFile(II)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getBaseDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string p2, ".jpg"

    invoke-static {p1, p2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLowResolutionBitmapFile(II)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getBaseDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo p2, "_reduced.jpg"

    invoke-static {p1, p2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getProtoFile(II)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getBaseDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string p2, ".proto"

    invoke-static {p1, p2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
