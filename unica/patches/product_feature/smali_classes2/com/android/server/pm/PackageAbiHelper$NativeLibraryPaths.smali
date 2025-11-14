.class public final Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final nativeLibraryDir:Ljava/lang/String;

.field public final nativeLibraryRootDir:Ljava/lang/String;

.field public final nativeLibraryRootRequiresIsa:Z

.field public final secondaryNativeLibraryDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootDir:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootRequiresIsa:Z

    iput-object p3, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryDir:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootDir:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootRequiresIsa:Z

    invoke-interface {p1, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setNativeLibraryRootRequiresIsa(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryDir:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    return-void
.end method
