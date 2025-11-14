.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;
.implements Lcom/android/server/pm/ApkChecksums$Injector$Producer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerServiceInjector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;->f$0:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public produce()Ljava/lang/Object;
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;->f$0:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mIncrementalManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/incremental/IncrementalManager;

    return-object p0
.end method

.method public produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;
    .registers 6

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance p1, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;->f$0:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$PackageSettingsDelegator;

    iget-object v1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mSettingsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/Settings;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$PackageSettingsDelegator;-><init>(Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;)V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;-><init>(Landroid/os/Handler;Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$PackageSettingsDelegator;)V

    return-object p1
.end method
