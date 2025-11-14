.class public abstract Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static prefixImplicitDependency(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V
    .locals 4

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "android.test.runner"

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0, v3, p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->addUsesLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    return-void

    :cond_1
    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0, v3, p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_2
    :goto_0
    return-void
.end method

.method public static prefixRequiredLibrary(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->addUsesLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V
.end method
