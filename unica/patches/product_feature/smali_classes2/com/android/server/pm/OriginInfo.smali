.class public final Lcom/android/server/pm/OriginInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCid:Ljava/lang/String;

.field public final mExisting:Z

.field public final mFile:Ljava/io/File;

.field public final mResolvedFile:Ljava/io/File;

.field public final mResolvedPath:Ljava/lang/String;

.field public final mStaged:Z


# direct methods
.method public constructor <init>(Ljava/io/File;ZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    iput-boolean p2, p0, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    iput-boolean p3, p0, Lcom/android/server/pm/OriginInfo;->mExisting:Z

    iput-object p4, p0, Lcom/android/server/pm/OriginInfo;->mCid:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    return-void
.end method
