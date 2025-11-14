.class public final synthetic Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/util/function/TriConsumer;

.field public final synthetic f$1:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/function/TriConsumer;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/util/function/TriConsumer;

    iput-object p2, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda2;->f$1:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/util/function/TriConsumer;

    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda2;->f$1:Landroid/util/ArrayMap;

    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    invoke-interface {v0, v1, p1, p0}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
