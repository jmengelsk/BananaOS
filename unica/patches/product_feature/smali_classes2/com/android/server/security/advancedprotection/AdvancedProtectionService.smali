.class public Lcom/android/server/security/advancedprotection/AdvancedProtectionService;
.super Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCallbacks:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public final mEmitLogs:Z

.field public final mHandler:Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;

.field public final mHooks:Ljava/util/ArrayList;

.field public final mProviders:Ljava/util/ArrayList;

.field public mSharedPreferences:Landroid/content/SharedPreferences;

.field public final mStore:Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;

.field public final mUserManager:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mProviders:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mEmitLogs:Z

    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;-><init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHandler:Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;

    new-instance v0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;

    invoke-direct {v0, p1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mStore:Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;

    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;Lcom/android/server/pm/UserManagerInternal;Landroid/os/Looper;Landroid/os/PermissionEnforcer;Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;Lcom/android/server/security/advancedprotection/features/AdvancedProtectionProvider;)V
    .registers 10

    invoke-direct {p0, p5}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mProviders:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mEmitLogs:Z

    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mStore:Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;

    iput-object p3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    new-instance p1, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;

    invoke-direct {p1, p0, p4}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;-><init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHandler:Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;

    if-eqz p6, :cond_2d

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    if-eqz p7, :cond_32

    invoke-virtual {v0, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mEmitLogs:Z

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    iget-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mContext:Landroid/content/Context;

    const-string p3, "AdvancedProtectionService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    const-string p1, "  isAdvancedProtectionEnabled: "

    invoke-static {p2, p3, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->isAdvancedProtectionEnabledInternal()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  mHooks.size(): "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  mCallbacks.size(): "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  mProviders.size(): "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "Hooks: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p2}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$$ExternalSyntheticLambda0;-><init>(ILjava/io/PrintWriter;)V

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const-string p1, "  Providers: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Ljava/io/PrintWriter;)V

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  mSharedPreferences: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getAdvancedProtectionFeatures()Ljava/util/List;
    .registers 6

    invoke-virtual {p0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getAdvancedProtectionFeatures_enforcePermission()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionProvider;

    iget-object v4, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/server/security/advancedprotection/features/DisallowWepAdvancedProtectionProvider;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getAvailableAdvancedProtectionFeatures()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_33
    :goto_33
    iget-object v2, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_53

    iget-object v2, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;

    invoke-virtual {v2}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual {v2}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;->getFeature()Landroid/security/advancedprotection/AdvancedProtectionFeature;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_53
    return-object v0
.end method

.method public final getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 5

    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_29

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "advanced_protection_preference"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    goto :goto_25

    :catchall_23
    move-exception v0

    goto :goto_27

    :cond_25
    :goto_25
    monitor-exit p0

    goto :goto_29

    :goto_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_23

    throw v0

    :cond_29
    :goto_29
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public final hoursSinceLastChange()I
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string/jumbo v0, "enabled_change_time"

    const-wide/16 v1, -0x1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-eqz p0, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    :cond_1c
    const/4 p0, -0x1

    return p0
.end method

.method public final isAdvancedProtectionEnabled()Z
    .registers 3

    invoke-virtual {p0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->isAdvancedProtectionEnabled_enforcePermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->isAdvancedProtectionEnabledInternal()Z

    move-result p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final isAdvancedProtectionEnabledInternal()Z
    .registers 3

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mStore:Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "advanced_protection_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    return v0

    :cond_14
    return v1
.end method

.method public final logAdvancedProtectionEnabled(Z)V
    .registers 10

    iget-boolean v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mEmitLogs:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_b

    const-string/jumbo v0, "enabled"

    goto :goto_e

    :cond_b
    const-string/jumbo v0, "disabled"

    :goto_e
    const-string v1, "Advanced protection has been "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvancedProtectionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->hoursSinceLastChange()I

    move-result v3

    const-string/jumbo p0, "last_dialog_feature_id"

    const/4 v1, -0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_40

    if-eq p0, v4, :cond_3e

    const/4 v6, 0x3

    if-eq p0, v2, :cond_41

    const/4 v7, 0x4

    if-eq p0, v6, :cond_3c

    if-eq p0, v7, :cond_3a

    move v6, v5

    goto :goto_41

    :cond_3a
    const/4 v6, 0x5

    goto :goto_41

    :cond_3c
    move v6, v7

    goto :goto_41

    :cond_3e
    move v6, v2

    goto :goto_41

    :cond_40
    move v6, v4

    :cond_41
    :goto_41
    const-string/jumbo p0, "last_dialog_type"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v4, :cond_4e

    if-eq p0, v2, :cond_4f

    move v2, v5

    goto :goto_4f

    :cond_4e
    move v2, v4

    :cond_4f
    :goto_4f
    const-string/jumbo p0, "last_dialog_learn_more_clicked"

    invoke-interface {v0, p0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const-string/jumbo v4, "last_dialog_hours_since_enabled"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/16 v1, 0x410

    move v5, v2

    move v4, v6

    move v6, p0

    move v2, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZIIIZI)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo p1, "enabled_change_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final logDialogShown(IIZ)V
    .registers 10

    invoke-virtual {p0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->logDialogShown_enforcePermission()V

    iget-boolean v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mEmitLogs:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->hoursSinceLastChange()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_23

    if-eq p1, v3, :cond_21

    const/4 v4, 0x3

    if-eq p1, v2, :cond_24

    const/4 v5, 0x4

    if-eq p1, v4, :cond_1f

    if-eq p1, v5, :cond_1d

    move v4, v1

    goto :goto_24

    :cond_1d
    const/4 v4, 0x5

    goto :goto_24

    :cond_1f
    move v4, v5

    goto :goto_24

    :cond_21
    move v4, v2

    goto :goto_24

    :cond_23
    move v4, v3

    :cond_24
    :goto_24
    if-eq p2, v3, :cond_2b

    if-eq p2, v2, :cond_29

    goto :goto_2c

    :cond_29
    move v1, v2

    goto :goto_2c

    :cond_2b
    move v1, v3

    :goto_2c
    const/16 v2, 0x411

    invoke-static {v2, v4, v1, p3, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZI)V

    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v1, "last_dialog_feature_id"

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo p1, "last_dialog_type"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo p1, "last_dialog_learn_more_clicked"

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo p1, "last_dialog_hours_since_enabled"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    new-instance v0, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;

    invoke-direct {v0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p0, v0, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final registerAdvancedProtectionCallback(Landroid/security/advancedprotection/IAdvancedProtectionCallback;)V
    .registers 6

    invoke-virtual {p0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->registerAdvancedProtectionCallback_enforcePermission()V

    invoke-interface {p1}, Landroid/security/advancedprotection/IAdvancedProtectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;

    invoke-direct {v1, p0, v0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;-><init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_13
    iget-object v2, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->isAdvancedProtectionEnabledInternal()Z

    move-result v0

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHandler:Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {p0, v3, v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v1

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public final setAdvancedProtectionEnabled(Z)V
    .registers 8

    invoke-virtual {p0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->setAdvancedProtectionEnabled_enforcePermission()V

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_b
    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_4a

    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->isAdvancedProtectionEnabledInternal()Z

    move-result v3

    if-eq p1, v3, :cond_43

    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mStore:Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;

    iget-object v3, v3, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "advanced_protection_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, p1, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHandler:Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;

    const/4 v4, -0x1

    invoke-static {v3, v5, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0, p1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->logAdvancedProtectionEnabled(Z)V

    goto :goto_43

    :catchall_41
    move-exception p0

    goto :goto_48

    :cond_43
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_1e .. :try_end_44} :catchall_41

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_48
    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_41

    :try_start_49
    throw p0

    :catchall_4a
    move-exception p0

    goto :goto_55

    :cond_4c
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Only an admin user can manage advanced protection mode"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_55
    .catchall {:try_start_49 .. :try_end_55} :catchall_4a

    :goto_55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final unregisterAdvancedProtectionCallback(Landroid/security/advancedprotection/IAdvancedProtectionCallback;)V
    .registers 3

    invoke-virtual {p0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->unregisterAdvancedProtectionCallback_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_6
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/security/advancedprotection/IAdvancedProtectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw p0
.end method
