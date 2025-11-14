.class public Lcom/android/server/os/BugreportManagerService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 9

    new-instance v0, Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/SystemConfig;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "system"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v7, "bugreport-mapping.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    iput-object v3, v2, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mAllowlistedPackages:Landroid/util/ArraySet;

    iput-object v4, v2, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mMappingFile:Landroid/util/AtomicFile;

    new-instance v1, Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;

    invoke-direct {v1, v2}, Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;-><init>(Lcom/android/server/os/BugreportManagerServiceImpl$Injector;)V

    iput-object v1, v2, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mRoleManagerWrapper:Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;

    invoke-direct {v0, v2}, Lcom/android/server/os/BugreportManagerServiceImpl;-><init>(Lcom/android/server/os/BugreportManagerServiceImpl$Injector;)V

    const-string/jumbo v1, "bugreport"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
