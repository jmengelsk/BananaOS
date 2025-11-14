.class public final synthetic Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/people/data/DataManager$NotificationListener;

.field public final synthetic f$1:Landroid/service/notification/StatusBarNotification;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager$NotificationListener;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;I)V
    .registers 5

    iput p4, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager$NotificationListener;

    iput-object p2, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_72

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager$NotificationListener;

    iget-object v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/StatusBarNotification;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    monitor-enter v0

    :try_start_e
    iget-object p1, v0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifKeys:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    new-instance v2, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p1, p0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_2d

    throw p0

    :pswitch_30  #0x0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager$NotificationListener;

    iget-object v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/StatusBarNotification;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-enter v0

    :try_start_41
    iget-object p1, v0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifKeys:Ljava/util/Map;

    new-instance v2, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p1, p0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6d

    iget-object p1, v0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifKeys:Ljava/util/Map;

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    iget p1, v0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->cleanupCachedShortcuts(I)V

    goto :goto_6d

    :catchall_6b
    move-exception p0

    goto :goto_6f

    :cond_6d
    :goto_6d
    monitor-exit v0

    return-void

    :goto_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_41 .. :try_end_70} :catchall_6b

    throw p0

    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_30  #00000000
    .end packed-switch
.end method
