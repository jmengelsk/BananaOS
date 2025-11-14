.class public Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
.super Lcom/android/server/notification/ManagedServices;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mIsHeadlessSystemUserMode:Z

.field public final mLightTrimListeners:Landroid/util/ArraySet;

.field public final mRequestedNotificationListeners:Landroid/util/ArrayMap;

.field public mSystemUIUid:I

.field public final mTrustListenerUpdateHistory:Ljava/util/ArrayList;

.field public final mTrustedListenerUids:Landroid/util/ArraySet;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;Z)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustListenerUpdateHistory:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mSystemUIUid:I

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    iput-boolean p6, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mIsHeadlessSystemUserMode:Z

    return-void
.end method

.method public static getTypesFromStringList(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4e

    const-string/jumbo v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    move v1, v0

    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_4d

    aget-object v2, p0, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_4a

    :cond_17
    const-string/jumbo v3, "ONGOING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    or-int/lit8 v1, v1, 0x8

    goto :goto_4a

    :cond_23
    const-string v3, "CONVERSATIONS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    or-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_2e
    const-string/jumbo v3, "SILENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    or-int/lit8 v1, v1, 0x4

    goto :goto_4a

    :cond_3a
    const-string v3, "ALERTING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    or-int/lit8 v1, v1, 0x2

    goto :goto_4a

    :cond_45
    :try_start_45
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_49} :catch_4a

    or-int/2addr v1, v2

    :catch_4a
    :goto_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_4d
    return v1

    :cond_4e
    return v0
.end method


# virtual methods
.method public final allowRebindForParentUser()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object p0

    return-object p0
.end method

.method public final dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    const-string p2, "\n  Trusted Listener Uids:"

    const-string v0, "    mSystemUIUid="

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mSystemUIUid:I

    const-string v1, "    mTrustedListenerUids="

    invoke-static {p2, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "    mTrustListenerUpdateHistory="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustListenerUpdateHistory:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final ensureFilters(Landroid/content/pm/ServiceInfo;I)V
    .registers 7

    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_f
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/NotificationListenerFilter;

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_84

    if-nez v1, :cond_4b

    const-string/jumbo v1, "android.service.notification.default_filter_types"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "android.service.notification.default_filter_types"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getTypesFromStringList(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/service/notification/NotificationListenerFilter;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {v2, v1, v3}, Landroid/service/notification/NotificationListenerFilter;-><init>(ILandroid/util/ArraySet;)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    :catchall_49
    move-exception p0

    goto :goto_86

    :cond_4b
    :goto_4b
    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "android.service.notification.disabled_filter_types"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "android.service.notification.disabled_filter_types"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getTypesFromStringList(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_84

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/service/notification/NotificationListenerFilter;

    invoke-direct {v2}, Landroid/service/notification/NotificationListenerFilter;-><init>()V

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/NotificationListenerFilter;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerFilter;->getTypes()I

    move-result v2

    not-int p1, p1

    and-int/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerFilter;->setTypes(I)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_84
    monitor-exit v0

    return-void

    :goto_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_f .. :try_end_87} :catchall_49

    throw p0
.end method

.method public final getBindFlags()I
    .registers 1

    const p0, 0x5000101

    return p0
.end method

.method public final getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .registers 2

    new-instance p0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "notification listener"

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    const-string/jumbo v0, "android.service.notification.NotificationListenerService"

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    const-string/jumbo v0, "enabled_listeners"

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    const-string/jumbo v0, "enabled_notification_listeners"

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    const-string/jumbo v0, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    const-string/jumbo v0, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    const v0, 0x1040981

    iput v0, p0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    return-object p0
.end method

.method public final getNotificationListenerFilter(Landroid/util/Pair;)Landroid/service/notification/NotificationListenerFilter;
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/notification/NotificationListenerFilter;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final getRequiredPermission()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasAllowedListener(ILjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p2, :cond_4

    goto :goto_27

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    move-result-object p0

    move p1, v0

    :goto_9
    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_27

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_27
    :goto_27
    return v0
.end method

.method public final isAppTrustedNotificationListenerService(ILjava/lang/String;)Z
    .registers 15

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_7
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string/jumbo v5, "android.permission.RECEIVE_SENSITIVE_NOTIFICATIONS"

    invoke-interface {v4, v5, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_8e

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4, p2}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8e

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v11, 0x0

    const/16 v7, 0x94

    const/4 v10, 0x0

    move v8, p1

    move-object v9, p2

    invoke-virtual/range {v6 .. v11}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_8e

    const-string/jumbo p1, "com.android.systemui"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_8e

    :cond_33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, v0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    if-nez p2, :cond_50

    const-string/jumbo p2, "companiondevice"

    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    move-result-object p2

    iput-object p2, v0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    goto :goto_50

    :catchall_4a
    move-exception v0

    move-object p0, v0

    goto :goto_9d

    :catch_4d
    move-exception v0

    move-object p1, v0

    goto :goto_92

    :cond_50
    :goto_50
    iget-object p2, v0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    if-eqz p2, :cond_5c

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/companion/ICompanionDeviceManager;->getAllAssociationsForUser(I)Ljava/util/List;

    move-result-object p1

    :cond_5c
    move p2, v3

    :goto_5d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_8a

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->isRevoked()Z

    move-result v4

    if-nez v4, :cond_87

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_81} :catch_4d
    .catchall {:try_start_7 .. :try_end_81} :catchall_4a

    if-ne v0, v4, :cond_87

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_87
    add-int/lit8 p2, p2, 0x1

    goto :goto_5d

    :cond_8a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_8e
    :goto_8e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :goto_92
    :try_start_92
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const-string p2, "Failed to check trusted status of listener"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_99
    .catchall {:try_start_92 .. :try_end_99} :catchall_4a

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_9d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final isUidTrusted(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final loadDefaultsFromConfig()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040335

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10403cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_2f
    array-length v3, v0

    if-ge v2, v3, :cond_64

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_61

    :cond_3b
    iget-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mIsHeadlessSystemUserMode:Z

    if-eqz v3, :cond_42

    const/high16 v3, 0x4c0000

    goto :goto_44

    :cond_42
    const/high16 v3, 0xc0000

    :goto_44
    aget-object v4, v0, v2

    invoke-virtual {p0, v3, v1, v4}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(IILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v3

    move v4, v1

    :goto_4b
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_61

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/notification/ManagedServices;->addDefaultComponentOrPackage(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    :cond_61
    :goto_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_64
    return-void
.end method

.method public final notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 16

    if-nez p3, :cond_3

    goto :goto_42

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_e
    :goto_e
    if-ge v2, v1, :cond_42

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    move-object v6, v3

    check-cast v6, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/android/server/notification/NotificationManagerService;->isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_e

    :cond_30
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda4;

    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    :cond_42
    :goto_42
    return-void
.end method

.method public final notifyNotificationChannelGroupChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    .registers 16

    if-nez p3, :cond_3

    goto :goto_42

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_e
    :goto_e
    if-ge v2, v1, :cond_42

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    move-object v6, v3

    check-cast v6, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/android/server/notification/NotificationManagerService;->isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_e

    :cond_30
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda4;

    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    :cond_42
    :goto_42
    return-void
.end method

.method public notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)V

    return-void
.end method

.method public notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->prepareNotifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p3, p3, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_1c
    return-void
.end method

.method public final notifyRankingUpdateLocked(Ljava/util/List;)V
    .registers 14

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    move v1, v0

    :goto_f
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :cond_1a
    :goto_1a
    if-ge v4, v3, :cond_70

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    invoke-virtual {v5}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForUser()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v6

    if-nez v6, :cond_37

    goto :goto_1a

    :cond_37
    if-eqz v1, :cond_5e

    iget v6, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    const/16 v8, 0x1c

    if-lt v6, v8, :cond_5e

    move-object v6, p1

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v0

    :cond_47
    if-ge v9, v8, :cond_5e

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/server/notification/NotificationRecord;

    iget-object v11, v10, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v10

    invoke-virtual {v7, v11, v10, v5}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v10

    if-eqz v10, :cond_47

    goto :goto_60

    :cond_5e
    if-nez v1, :cond_1a

    :goto_60
    invoke-virtual {v7, v5}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v6

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v8, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda5;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v5, v6, v9}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a

    :cond_70
    return-void
.end method

.method public final notifyRemoved(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V
    .registers 11

    const-string/jumbo v0, "unable to notify listener (removed): "

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Landroid/service/notification/INotificationListener;

    :try_start_9
    iget v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    const-wide/32 v3, 0xa732a34

    invoke-static {v3, v4, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    if-nez v2, :cond_1e

    const/16 v2, 0x14

    if-eq p5, v2, :cond_1c

    const/16 v2, 0x15

    if-ne p5, v2, :cond_1e

    :cond_1c
    const/16 p5, 0x11

    :cond_1e
    iget v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    const-wide/32 v3, 0xba84d90

    invoke-static {v3, v4, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    if-nez v2, :cond_2f

    const/16 v2, 0x16

    if-ne p5, v2, :cond_2f

    const/16 p5, 0xa

    :cond_2f
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-direct {v2, p2}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    invoke-interface {v1, v2, p3, p4, p5}, Landroid/service/notification/INotificationListener;->onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V
    :try_end_37
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_37} :catch_3a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception p2

    goto :goto_3c

    :catch_3a
    move-exception p2

    goto :goto_4c

    :goto_3c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    :goto_4c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5b
    return-void
.end method

.method public final notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v6, p2

    iget-object v0, v7, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v8, Lcom/android/server/notification/NotificationManagerService;->mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mUserInLockDownMode:Landroid/util/SparseBooleanArray;

    const/4 v9, 0x0

    invoke-virtual {v2, v0, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    iget-object v10, v7, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v11

    iget-boolean v12, v7, Lcom/android/server/notification/NotificationRecord;->mSensitiveContent:Z

    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    move v2, v9

    move-object v0, v15

    :goto_34
    if-ge v2, v14, :cond_ad

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v16, v2, 0x1

    move-object v2, v3

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v3

    invoke-virtual {v8, v10, v3, v2}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v3

    if-nez v3, :cond_4a

    goto :goto_5f

    :cond_4a
    iget-boolean v3, v7, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    const/16 v4, 0x1c

    const/16 v5, 0xe

    if-eqz v3, :cond_59

    if-eq v6, v5, :cond_59

    iget v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    if-ge v3, v4, :cond_59

    goto :goto_5f

    :cond_59
    if-ne v6, v5, :cond_62

    iget v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    if-lt v3, v4, :cond_62

    :goto_5f
    move/from16 v2, v16

    goto :goto_34

    :cond_62
    if-eqz v12, :cond_6e

    iget v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    invoke-virtual {v1, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isUidTrusted(I)Z

    move-result v3

    if-nez v3, :cond_6e

    const/4 v3, 0x1

    goto :goto_6f

    :cond_6e
    move v3, v9

    :goto_6f
    if-eqz v3, :cond_77

    if-nez v0, :cond_77

    invoke-virtual {v1, v10}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->redactStatusBarNotification(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    :cond_77
    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    if-nez v4, :cond_83

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_8c

    :cond_83
    invoke-virtual {v0, v4}, Lcom/android/server/notification/ManagedServices;->getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_8c

    move-object/from16 v5, p3

    goto :goto_8d

    :cond_8c
    :goto_8c
    move-object v5, v15

    :goto_8d
    if-eqz v3, :cond_92

    move-object/from16 v3, v17

    goto :goto_93

    :cond_92
    move-object v3, v11

    :goto_93
    invoke-virtual {v8, v2}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v4

    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v18, v0

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda4;

    move-object/from16 v9, v18

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move/from16 v6, p2

    move/from16 v2, v16

    move-object/from16 v0, v17

    const/4 v9, 0x0

    goto :goto_34

    :cond_ad
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda7;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1, v7}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPackagesChanged(Z[Ljava/lang/String;[I)V
    .registers 11

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/notification/ManagedServices;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    if-eqz p1, :cond_74

    const/4 p1, 0x0

    move v1, p1

    :goto_a
    :try_start_a
    array-length v2, p2

    if-ge v1, v2, :cond_4d

    aget-object v2, p2, v1

    aget v3, p3, v1

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1d
    if-ltz v4, :cond_4a

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_47

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_47

    :catchall_45
    move-exception p0

    goto :goto_76

    :cond_47
    :goto_47
    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_4d
    :goto_4d
    array-length v1, p2

    if-ge p1, v1, :cond_74

    aget-object v1, p2, p1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_5a
    if-ltz v2, :cond_71

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/NotificationListenerFilter;

    new-instance v4, Landroid/content/pm/VersionedPackage;

    aget v5, p3, p1

    invoke-direct {v4, v1, v5}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/service/notification/NotificationListenerFilter;->removePackage(Landroid/content/pm/VersionedPackage;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_5a

    :cond_71
    add-int/lit8 p1, p1, 0x1

    goto :goto_4d

    :cond_74
    monitor-exit v0

    return-void

    :goto_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_a .. :try_end_77} :catchall_45

    throw p0
.end method

.method public final onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 10

    const-string/jumbo v0, "Trim appInfo.metaData = "

    const-string/jumbo v1, "onServiceAdded : add "

    iget-object v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v2, Landroid/service/notification/INotificationListener;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_f
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->updateUriPermissionsForActiveNotificationsLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_9b

    iget v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    iget-object v6, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isAppTrustedNotificationListenerService(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    monitor-enter v3

    :try_start_2b
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    iget v7, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustListenerUpdateHistory:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_4e

    :catchall_4b
    move-exception p0

    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_2b .. :try_end_4d} :catchall_4b

    throw p0

    :cond_4e
    :goto_4e
    :try_start_4e
    invoke-interface {v2, v4}, Landroid/service/notification/INotificationListener;->onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V

    iget-boolean v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_53} :catch_9a

    if-eqz v1, :cond_9a

    :try_start_55
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_9a

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_9a

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.samsung.android.notification.listener.trim"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_9a

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_95
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_55 .. :try_end_95} :catch_96
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_95} :catch_9a

    goto :goto_9a

    :catch_96
    move-exception p0

    :try_start_97
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9a} :catch_9a

    :catch_9a
    :cond_9a
    :goto_9a
    return-void

    :catchall_9b
    move-exception p0

    :try_start_9c
    monitor-exit v3
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw p0
.end method

.method public final onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 9

    const-string/jumbo v0, "onServiceRemovedLocked : remove "

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->updateUriPermissionsForActiveNotificationsLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    invoke-virtual {v2, p1, v1}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateListenerHintsLocked(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateEffectsSuppressorLocked(Lcom/android/server/notification/NotificationManagerService;)V

    :cond_1b
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    monitor-enter v1

    :try_start_1e
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mSystemUIUid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_39

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-string/jumbo v3, "com.android.systemui"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    iput v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mSystemUIUid:I

    goto :goto_39

    :catchall_37
    move-exception p0

    goto :goto_64

    :cond_39
    :goto_39
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mSystemUIUid:I

    iget v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    if-eq v2, v3, :cond_5d

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustListenerUpdateHistory:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    iget v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_1e .. :try_end_5e} :catchall_37

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void

    :goto_64
    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_37

    throw p0
.end method

.method public final onUserRemoved(I)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/server/notification/ManagedServices;->onUserRemoved(I)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_2d

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_2a

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2f

    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_2d
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_28

    throw p0
.end method

.method public prepareNotifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)Ljava/util/List;
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/NotificationRecord;",
            "Lcom/android/server/notification/NotificationRecord;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const-string/jumbo v8, "com.android.systemui"

    iget-object v0, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v9, Lcom/android/server/notification/NotificationManagerService;->mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mUserInLockDownMode:Landroid/util/SparseBooleanArray;

    const/4 v10, 0x0

    invoke-virtual {v2, v0, v10}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_26
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :try_start_2b
    iget-object v12, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    const/4 v0, 0x0

    if-eqz v7, :cond_34

    iget-object v2, v7, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object v13, v2

    goto :goto_35

    :cond_34
    move-object v13, v0

    :goto_35
    iget-boolean v14, v6, Lcom/android/server/notification/NotificationRecord;->mSensitiveContent:Z

    if-eqz v7, :cond_3d

    iget-boolean v2, v7, Lcom/android/server/notification/NotificationRecord;->mSensitiveContent:Z

    move v15, v2

    goto :goto_3e

    :cond_3d
    move v15, v10

    :goto_3e
    iget-boolean v2, v9, Lcom/android/server/notification/NotificationManagerService;->mRedactOtpNotifications:Z

    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v16, v0

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move v0, v10

    :goto_55
    if-ge v0, v4, :cond_1bd

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v21, v0, 0x1

    check-cast v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget v0, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isUidTrusted(I)Z

    move-result v0

    if-eqz v2, :cond_6e

    if-eqz v14, :cond_6e

    if-nez v0, :cond_6e

    const/16 v22, 0x1

    goto :goto_70

    :cond_6e
    const/16 v22, 0x0

    :goto_70
    if-eqz v2, :cond_78

    if-eqz v15, :cond_78

    if-nez v0, :cond_78

    const/4 v0, 0x1

    goto :goto_79

    :cond_78
    const/4 v0, 0x0

    :goto_79
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v10

    invoke-virtual {v9, v12, v10, v5}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v10

    if-eqz v13, :cond_95

    move/from16 v23, v0

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v0

    invoke-virtual {v9, v13, v0, v5}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    if-eqz v0, :cond_97

    const/16 v24, 0x1

    goto :goto_99

    :catch_92
    move-exception v0

    goto/16 :goto_1a4

    :cond_95
    move/from16 v23, v0

    :cond_97
    const/16 v24, 0x0

    :goto_99
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    move/from16 v25, v2

    const v2, 0xb792f1

    if-ne v0, v2, :cond_bb

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    iget-object v0, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bb

    goto :goto_ca

    :cond_bb
    if-nez v24, :cond_c0

    if-nez v10, :cond_c0

    goto :goto_ca

    :cond_c0
    iget-boolean v0, v6, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    const/16 v2, 0x1c

    if-eqz v0, :cond_d0

    iget v0, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    if-ge v0, v2, :cond_d0

    :goto_ca
    move/from16 v0, v21

    :goto_cc
    move/from16 v2, v25

    const/4 v10, 0x0

    goto :goto_55

    :cond_d0
    if-nez p3, :cond_d7

    iget v0, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    if-lt v0, v2, :cond_d7

    goto :goto_ca

    :cond_d7
    move v0, v4

    invoke-virtual {v9, v5}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v4

    if-eqz v24, :cond_10e

    if-nez v10, :cond_10e

    if-eqz v23, :cond_ea

    if-nez v18, :cond_ea

    invoke-virtual {v1, v13}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->redactStatusBarNotification(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    move-object/from16 v18, v2

    :cond_ea
    if-eqz v23, :cond_f2

    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    :goto_f0
    move v10, v0

    goto :goto_f7

    :cond_f2
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    goto :goto_f0

    :goto_f7
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;

    move-object/from16 v22, v3

    move-object v3, v2

    move-object v2, v5

    const/4 v5, 0x1

    move/from16 v23, v10

    move-object/from16 v10, v22

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_108
    move-object v3, v10

    move/from16 v0, v21

    move/from16 v4, v23

    goto :goto_cc

    :cond_10e
    move/from16 v23, v0

    move-object v10, v3

    move-object v2, v5

    iget v0, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_118

    const/4 v0, 0x0

    :cond_118
    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v6, v7, v3, v0}, Lcom/android/server/notification/NotificationManagerService;->updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V

    iget-object v3, v9, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget v5, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v29

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v30

    const/16 v32, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x0

    move/from16 v27, v0

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v32}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    if-eqz v22, :cond_14b

    if-nez v16, :cond_14b

    invoke-virtual {v1, v12}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->redactStatusBarNotification(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$TrimCache;

    invoke-direct {v3, v9, v0}, Lcom/android/server/notification/NotificationManagerService$TrimCache;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V

    move-object/from16 v16, v0

    move-object v0, v3

    goto :goto_14d

    :cond_14b
    move-object/from16 v0, v17

    :goto_14d
    if-eqz v22, :cond_17c

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_16b

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnCloneLight:Landroid/service/notification/StatusBarNotification;

    if-nez v3, :cond_168

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->heavy:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnCloneLight:Landroid/service/notification/StatusBarNotification;

    :cond_168
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnCloneLight:Landroid/service/notification/StatusBarNotification;

    goto :goto_179

    :cond_16b
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnClone:Landroid/service/notification/StatusBarNotification;

    if-nez v3, :cond_177

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->heavy:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnClone:Landroid/service/notification/StatusBarNotification;

    :cond_177
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnClone:Landroid/service/notification/StatusBarNotification;

    :goto_179
    move-object/from16 v17, v0

    goto :goto_199

    :cond_17c
    iget-object v3, v9, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_190

    if-nez v19, :cond_18d

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v19

    :cond_18d
    move-object/from16 v3, v19

    goto :goto_179

    :cond_190
    if-nez v20, :cond_196

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object v20

    :cond_196
    move-object/from16 v3, v20

    goto :goto_179

    :goto_199
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_1a2} :catch_92

    goto/16 :goto_108

    :goto_1a4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not notify listeners for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1bd
    return-object v11
.end method

.method public final readExtraTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V
    .registers 11

    const-string/jumbo v0, "request_listeners"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9e

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p2

    :goto_d
    invoke-static {p1, p2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_9e

    const-string/jumbo v0, "listener"

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_d

    :cond_21
    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "component"

    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    const/16 v4, 0xf

    :cond_3e
    :goto_3e
    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_83

    const-string/jumbo v5, "allowed"

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    const-string/jumbo v4, "types"

    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    goto :goto_3e

    :cond_59
    const-string/jumbo v5, "disallowed"

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    const-string/jumbo v5, "pkg"

    invoke-static {p1, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "uid"

    invoke-static {p1, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3e

    new-instance v7, Landroid/content/pm/VersionedPackage;

    invoke-direct {v7, v5, v6}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_83
    new-instance v3, Landroid/service/notification/NotificationListenerFilter;

    invoke-direct {v3, v4, v2}, Landroid/service/notification/NotificationListenerFilter;-><init>(ILandroid/util/ArraySet;)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_8b
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto/16 :goto_d

    :catchall_9b
    move-exception p0

    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_8b .. :try_end_9d} :catchall_9b

    throw p0

    :cond_9e
    return-void
.end method

.method public final redactStatusBarNotification(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;
    .registers 13

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.appInfo"

    const-class v2, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    if-eqz v0, :cond_20

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "StatusBarNotification "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not have ApplicationInfo. Did you pass in a \'cloneLight\' notification?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_3d
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    const v3, 0x1040ce3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    new-instance v7, Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v7, v1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-array v1, v6, [Landroid/app/Notification$Action;

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    iget-object v1, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_92

    :goto_6f
    iget-object v1, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v1, v1

    if-ge v6, v1, :cond_92

    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v5, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v5, v5, v6

    invoke-direct {v1, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/app/Notification$Action;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    const v8, 0x1040ce2

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_6f

    :cond_92
    const-class v1, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v4, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v1

    const-string v5, ""

    if-eqz v1, :cond_bd

    new-instance v1, Landroid/app/Person$Builder;

    invoke-direct {v1}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v1, v5}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v1

    new-instance v6, Landroid/app/Notification$MessagingStyle;

    invoke-direct {v6, v1}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    new-instance v8, Landroid/app/Notification$MessagingStyle$Message;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v8, v2, v9, v10, v1}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V

    invoke-virtual {v6, v8}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_bd
    const-class v1, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v4, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_dc

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v1, v5}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v1, v5}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_dc
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.title.big"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f0

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f0
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.subText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.textLines"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.largeIcon.big"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/service/notification/StatusBarNotification;->cloneShallow(Landroid/app/Notification;)Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    return-object p0
.end method

.method public final setPackageOrComponentEnabled(ILjava/lang/String;ZZZ)V
    .registers 13

    const-string/jumbo p3, "setPackageOrComponentEnabled : add "

    const-string/jumbo v0, "setPackageOrComponentEnabled : remove "

    const/4 v4, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-super/range {v1 .. v6}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(ILjava/lang/String;ZZZ)V

    invoke-static {v3}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 p4, 0x0

    invoke-virtual {p1, p0, p4, p5, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p1

    if-nez v5, :cond_68

    if-ltz p1, :cond_68

    iget-object p2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    monitor-enter p2

    :try_start_24
    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mSystemUIUid:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3e

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-string/jumbo v4, "com.android.systemui"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v3, v4, p4, p5, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p4

    iput p4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mSystemUIUid:I

    goto :goto_3e

    :catchall_3b
    move-exception v0

    move-object p0, v0

    goto :goto_66

    :cond_3e
    :goto_3e
    iget p4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mSystemUIUid:I

    if-eq p4, p1, :cond_64

    iget-object p4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustListenerUpdateHistory:Ljava/util/ArrayList;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p4, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_64
    monitor-exit p2

    goto :goto_68

    :goto_66
    monitor-exit p2
    :try_end_67
    .catchall {:try_start_24 .. :try_end_67} :catchall_3b

    throw p0

    :cond_68
    :goto_68
    if-eqz v5, :cond_95

    if-ltz p1, :cond_95

    invoke-virtual {v1, p1, p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isAppTrustedNotificationListenerService(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_95

    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    monitor-enter p0

    :try_start_75
    iget-object p2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p2, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustListenerUpdateHistory:Ljava/util/ArrayList;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    goto :goto_95

    :catchall_91
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_94
    .catchall {:try_start_75 .. :try_end_94} :catchall_91

    throw p1

    :cond_95
    :goto_95
    iget-object p0, v1, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "android.app.action.NOTIFICATION_LISTENER_ENABLED_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x40000000  # 2.0f

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public final updateUriPermissionsForActiveNotificationsLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    :try_start_2
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_7a

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object v8, v5

    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    if-eqz p2, :cond_26

    iget-object v5, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v6

    invoke-virtual {v0, v5, v6, p1}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v5

    if-nez v5, :cond_26

    goto :goto_a

    :catch_24
    move-exception v0

    goto :goto_54

    :cond_26
    iget-boolean v5, v8, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    if-eqz v5, :cond_31

    iget v5, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    const/16 v6, 0x1c

    if-ge v5, v6, :cond_31

    goto :goto_a

    :cond_31
    iget v5, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_38

    move v10, v3

    goto :goto_39

    :cond_38
    move v10, v5

    :goto_39
    if-eqz p2, :cond_46

    iget-object v5, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v8, v6, v5, v10}, Lcom/android/server/notification/NotificationManagerService;->updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V

    goto :goto_a

    :cond_46
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/notification/NotificationManagerService;->updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;IZ)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_53} :catch_24

    goto :goto_a

    :goto_54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_61

    const-string/jumbo p2, "grant"

    goto :goto_64

    :cond_61
    const-string/jumbo p2, "revoke"

    :goto_64
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Uri permissions to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7a
    return-void
.end method

.method public final writeExtraXmlTags(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 9

    const-string/jumbo v0, "request_listeners"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_a
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotificationListenerFilter;

    const-string/jumbo v5, "listener"

    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "component"

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v5, "user"

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p1, v5, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v3, "allowed"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "types"

    invoke-virtual {v4}, Landroid/service/notification/NotificationListenerFilter;->getTypes()I

    move-result v5

    invoke-static {p1, v3, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v3, "allowed"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v4}, Landroid/service/notification/NotificationListenerFilter;->getDisallowedPackages()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_68
    :goto_68
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/VersionedPackage;

    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_68

    const-string/jumbo v5, "disallowed"

    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "pkg"

    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v5, "uid"

    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    move-result v4

    invoke-static {p1, v5, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v4, "disallowed"

    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_68

    :catchall_9f
    move-exception p0

    goto :goto_b1

    :cond_a1
    const-string/jumbo v3, "listener"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_14

    :cond_a9
    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_a .. :try_end_aa} :catchall_9f

    const-string/jumbo p0, "request_listeners"

    invoke-interface {p1, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :goto_b1
    :try_start_b1
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_9f

    throw p0
.end method
