.class public final Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iput-object p2, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iget-object v0, v0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iget-object v1, v1, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
