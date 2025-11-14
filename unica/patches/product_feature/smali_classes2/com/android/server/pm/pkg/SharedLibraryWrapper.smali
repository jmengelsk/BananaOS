.class public final Lcom/android/server/pm/pkg/SharedLibraryWrapper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/pkg/SharedLibrary;


# instance fields
.field public cachedDependenciesList:Ljava/util/List;

.field public final mInfo:Landroid/content/pm/SharedLibraryInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/SharedLibraryInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    return-void
.end method


# virtual methods
.method public final getAllCodePaths()Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getDeclaringPackage()Landroid/content/pm/VersionedPackage;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object p0

    return-object p0
.end method

.method public final getDependencies()Ljava/util/List;
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->cachedDependenciesList:Ljava/util/List;

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v0}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_11

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->cachedDependenciesList:Ljava/util/List;

    goto :goto_34

    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    new-instance v3, Lcom/android/server/pm/pkg/SharedLibraryWrapper;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SharedLibraryInfo;

    invoke-direct {v3, v4}, Lcom/android/server/pm/pkg/SharedLibraryWrapper;-><init>(Landroid/content/pm/SharedLibraryInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2e
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->cachedDependenciesList:Ljava/util/List;

    :cond_34
    :goto_34
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->cachedDependenciesList:Ljava/util/List;

    return-object p0
.end method

.method public final getDependentPackages()Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependentPackages()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getType()I
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result p0

    return p0
.end method

.method public final getVersion()J
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isNative()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result p0

    return p0
.end method
