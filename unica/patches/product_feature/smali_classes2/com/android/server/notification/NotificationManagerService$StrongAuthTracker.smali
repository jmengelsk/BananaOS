.class public final Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mUserInLockDownMode:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mUserInLockDownMode:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final declared-synchronized onStrongAuthRequiredChanged(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mUserInLockDownMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1f

    if-ne v0, v1, :cond_17

    monitor-exit p0

    return-void

    :cond_17
    if-eqz v0, :cond_21

    :try_start_19
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelNotificationsWhenEnterLockDownMode(Lcom/android/server/notification/NotificationManagerService;I)V

    goto :goto_21

    :catchall_1f
    move-exception p1

    goto :goto_2f

    :cond_21
    :goto_21
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mUserInLockDownMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mpostNotificationsWhenExitLockDownMode(Lcom/android/server/notification/NotificationManagerService;I)V
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_1f

    :cond_2d
    monitor-exit p0

    return-void

    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_1f

    throw p1
.end method
