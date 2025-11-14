.class public final Lcom/android/server/security/advancedprotection/AdvancedProtectionService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-direct {v0, p1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$Lifecycle;->mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .registers 6

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_6f

    sget p1, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$Lifecycle;->mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->isAdvancedProtectionEnabledInternal()Z

    move-result p1

    const-string v0, "AdvancedProtectionService"

    if-eqz p1, :cond_15

    const-string v1, "Advanced protection is enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/security/advancedprotection/features/DisallowInstallUnknownSourcesAdvancedProtectionHook;

    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/android/server/security/advancedprotection/features/DisallowInstallUnknownSourcesAdvancedProtectionHook;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_21} :catch_22

    goto :goto_28

    :catch_22
    move-exception v1

    const-string v2, "Failed to initialize DisallowInstallUnknownSources"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    :try_start_28
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;

    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_34} :catch_35

    goto :goto_3b

    :catch_35
    move-exception v1

    const-string v2, "Failed to initialize MemoryTaggingExtension"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3b
    :try_start_3b
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;

    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_47} :catch_48

    goto :goto_4e

    :catch_48
    move-exception p1

    const-string v1, "Failed to initialize DisallowCellular2g"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4e
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mProviders:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/security/advancedprotection/features/DisallowWepAdvancedProtectionProvider;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/StatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatsManager;

    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStatePullAtomCallback;

    invoke-direct {v1, p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStatePullAtomCallback;-><init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)V

    const/16 p0, 0x27fc

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2, v0, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    :cond_6f
    return-void
.end method

.method public final onStart()V
    .registers 3

    const-string/jumbo v0, "advanced_protection"

    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$Lifecycle;->mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
