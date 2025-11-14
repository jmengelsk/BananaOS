.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/PackageManagerServiceInjector$Producer;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/android/server/pm/Installer;

.field public final synthetic f$2:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final synthetic f$3:Lcom/android/server/pm/PackageManagerTracedLock;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerTracedLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;->f$1:Lcom/android/server/pm/Installer;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;->f$2:Lcom/android/server/pm/PackageManagerTracedLock;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;->f$3:Lcom/android/server/pm/PackageManagerTracedLock;

    return-void
.end method


# virtual methods
.method public final produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;
    .locals 8

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;->f$0:Landroid/content/Context;

    sget-boolean p2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance v0, Lcom/android/server/pm/UserManagerService;

    new-instance v3, Lcom/android/server/pm/UserDataPreparer;

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;->f$2:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;->f$1:Lcom/android/server/pm/Installer;

    invoke-direct {v3, v2, p2, v1}, Lcom/android/server/pm/UserDataPreparer;-><init>(Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;)V

    sget-object v7, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;->f$3:Lcom/android/server/pm/PackageManagerTracedLock;

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;Landroid/util/SparseArray;Lcom/android/server/pm/PersonaManagerService;)V

    return-object v0
.end method
