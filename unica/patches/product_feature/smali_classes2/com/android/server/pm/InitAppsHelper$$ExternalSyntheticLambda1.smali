.class public final synthetic Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/content/om/OverlayConfig$PackageProvider;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InitAppsHelper;

.field public final synthetic f$1:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InitAppsHelper;Landroid/util/ArrayMap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/InitAppsHelper;

    iput-object p2, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;->f$1:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final forEachPackage(Lcom/android/internal/util/function/TriConsumer;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/InitAppsHelper;

    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;->f$1:Landroid/util/ArrayMap;

    iget-object v0, v0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0}, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/util/function/TriConsumer;Landroid/util/ArrayMap;)V

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    return-void
.end method
