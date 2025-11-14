.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/PackageManagerServiceInjector$Producer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;->f$0:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;
    .locals 6

    iget p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;->f$0:Landroid/content/Context;

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance v0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;

    iget-object p0, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mSettingsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/pm/Settings;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/CrossProfileIntentFilterHelper;-><init>(Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/UserManagerService$LocalService;Landroid/content/Context;)V

    return-object v0

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;->f$0:Landroid/content/Context;

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    sget-object p2, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    const-class p2, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "permissionmgr"

    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerService;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;-><init>(Landroid/content/Context;Landroid/util/ArrayMap;)V

    invoke-static {p2, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance p1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;

    invoke-direct {p1, p0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;-><init>(Landroid/content/Context;)V

    const-string/jumbo p0, "permission_checker"

    invoke-static {p0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_1
    const-class p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    :goto_0
    return-object p2

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;->f$0:Landroid/content/Context;

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance p1, Lcom/android/server/pm/DefaultAppProvider;

    new-instance p2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;-><init>(ILjava/lang/Object;)V

    new-instance p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda42;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p1, p2, p0}, Lcom/android/server/pm/DefaultAppProvider;-><init>(Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda42;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
