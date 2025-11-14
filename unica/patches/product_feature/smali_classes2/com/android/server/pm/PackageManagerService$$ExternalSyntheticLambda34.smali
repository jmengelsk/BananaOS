.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/PackageManagerServiceInjector$Producer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:Lcom/android/server/pm/PackageManagerTracedLock;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda34;->f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda34;->f$1:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda34;->f$2:Lcom/android/server/pm/PackageManagerTracedLock;

    return-void
.end method


# virtual methods
.method public final produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;
    .locals 7

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance v0, Lcom/android/server/pm/Settings;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/android/permission/persistence/RuntimePermissionsPersistence;->createInstance()Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    move-result-object v2

    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPermissionManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1, v3, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda34;->f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda34;->f$1:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda34;->f$2:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/Settings;-><init>(Ljava/io/File;Lcom/android/permission/persistence/RuntimePermissionsPersistence;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;)V

    return-object v0
.end method
