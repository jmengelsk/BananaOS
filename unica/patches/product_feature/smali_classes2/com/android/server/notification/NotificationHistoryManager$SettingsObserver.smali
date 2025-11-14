.class public final Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final NOTIFICATION_HISTORY_URI:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationHistoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryManager;Lcom/android/server/notification/NotificationManagerService$WorkerHandler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "notification_history_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->NOTIFICATION_HISTORY_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .registers 4

    invoke-virtual {p0, p3, p2}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->update(ILandroid/net/Uri;)V

    return-void
.end method

.method public final update(ILandroid/net/Uri;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    iget-object v0, v0, Lcom/android/server/notification/NotificationHistoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p2, :cond_14

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->NOTIFICATION_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    goto :goto_14

    :cond_13
    return-void

    :cond_14
    :goto_14
    const-string/jumbo p2, "notification_history_enabled"

    const/4 v1, 0x1

    invoke-static {v0, p2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_20

    move p2, v1

    goto :goto_21

    :cond_20
    const/4 p2, 0x0

    :goto_21
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_30

    :try_start_28
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_44

    :cond_30
    :goto_30
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object v2

    if-eqz v2, :cond_3c

    if-nez p2, :cond_42

    invoke-virtual {p0, p1, v2}, Lcom/android/server/notification/NotificationHistoryManager;->disableHistory(ILcom/android/server/notification/NotificationHistoryDatabase;)V

    goto :goto_42

    :cond_3c
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    xor-int/2addr p2, v1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_42
    :goto_42
    monitor-exit v0

    return-void

    :goto_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_28 .. :try_end_45} :catchall_2e

    throw p0
.end method
