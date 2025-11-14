.class public final synthetic Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/ArraySet;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;->f$3:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;->f$3:Landroid/util/ArraySet;

    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    if-nez p1, :cond_11

    goto :goto_3a

    :cond_11
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesLibrariesSorted()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/server/pm/AppStateHelper;->containsAny([Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesOptionalLibrariesSorted()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/server/pm/AppStateHelper;->containsAny([Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesStaticLibrariesSorted()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/pm/AppStateHelper;->containsAny([Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesSdkLibrariesSorted()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/server/pm/AppStateHelper;->containsAny([Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_3b

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    :goto_3b
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method
