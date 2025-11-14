.class public final Lcom/android/server/notification/GroupHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z

.field public static NOTIFICATION_SHADE_SECTIONS:Ljava/util/List;


# instance fields
.field public final mAggregatedNotifications:Landroid/util/ArrayMap;

.field public final mAutoGroupAtCount:I

.field public final mAutogroupSparseGroupsAtCount:I

.field public final mCallback:Lcom/android/server/notification/NotificationManagerService$3;

.field public final mCanceledSummaries:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public mIsTestHarnessExempted:Z

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mUngroupedAbuseNotifications:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "GroupHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    invoke-static {}, Lcom/android/server/notification/GroupHelper;->getNotificationShadeSections()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_SHADE_SECTIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILcom/android/server/notification/NotificationManagerService$3;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    iput p3, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    iput-object p4, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    iput-object p1, p0, Lcom/android/server/notification/GroupHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/notification/GroupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 p1, 0x6

    iput p1, p0, Lcom/android/server/notification/GroupHelper;->mAutogroupSparseGroupsAtCount:I

    invoke-static {}, Lcom/android/server/notification/GroupHelper;->getNotificationShadeSections()Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_SHADE_SECTIONS:Ljava/util/List;

    return-void
.end method

.method public static getAutogroupSummaryFlags(Landroid/util/ArrayMap;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/GroupHelper$NotificationAttributes;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v2, v1

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    iget v3, v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    and-int/lit8 v3, v3, 0x22

    if-eqz v3, :cond_13

    or-int/2addr v2, v3

    goto :goto_13

    :cond_2d
    if-eqz v0, :cond_31

    const/16 v1, 0x10

    :cond_31
    or-int/lit16 p0, v1, 0x700

    or-int/2addr p0, v2

    return p0
.end method

.method public static getFullAggregateGroupKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    invoke-virtual {v0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNotificationShadeSections()Ljava/util/List;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v2, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;-><init>(I)V

    const-string/jumbo v3, "PromotionsSection"

    invoke-direct {v1, v3, v2}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;Ljava/util/function/Predicate;)V

    new-instance v2, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v3, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;-><init>(I)V

    const-string/jumbo v4, "SocialSection"

    invoke-direct {v2, v4, v3}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;Ljava/util/function/Predicate;)V

    new-instance v3, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v4, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;-><init>(I)V

    const-string/jumbo v5, "NewsSection"

    invoke-direct {v3, v5, v4}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;Ljava/util/function/Predicate;)V

    new-instance v4, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v5, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;-><init>(I)V

    const-string/jumbo v6, "RecsSection"

    invoke-direct {v4, v6, v5}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;Ljava/util/function/Predicate;)V

    invoke-static {v1, v2, v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v2, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;-><init>(I)V

    const-string/jumbo v3, "OngoingActivitySection"

    invoke-direct {v1, v3, v2}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;Ljava/util/function/Predicate;)V

    new-instance v2, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v3, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;-><init>(I)V

    const-string/jumbo v4, "NoneGroupingSection_"

    invoke-direct {v2, v4, v3}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;Ljava/util/function/Predicate;)V

    new-instance v3, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v4, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;-><init>(I)V

    const-string/jumbo v5, "NormalNotificationSection"

    invoke-direct {v3, v5, v4}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;Ljava/util/function/Predicate;)V

    invoke-static {v1, v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static getNumChildrenForGroup(Ljava/lang/String;Ljava/util/List;)I
    .registers 5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getOriginalGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v1, v1, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_5

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_3c
    sget-boolean p1, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p1, :cond_5c

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getNumChildrenForGroup "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " numChild: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GroupHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    return v0
.end method

.method public static getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    .registers 6

    sget-object v0, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_SHADE_SECTIONS:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_9
    if-ge v2, v1, :cond_1a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    invoke-virtual {v3, p0}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->isInSection(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v4

    if-eqz v4, :cond_9

    return-object v3

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasInsignificantFlag(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->semFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->semFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->semFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-nez v0, :cond_37

    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->semFlags:I

    const/high16 v0, 0x400000

    and-int/2addr p0, v0

    if-eqz p0, :cond_35

    goto :goto_37

    :cond_35
    const/4 p0, 0x0

    return p0

    :cond_37
    :goto_37
    const/4 p0, 0x1

    return p0
.end method

.method public static isGroupSummaryWithoutChildren(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_21

    :cond_19
    invoke-static {v1, p1}, Lcom/android/server/notification/GroupHelper;->getNumChildrenForGroup(Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    if-nez p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final addToUngroupedAndMaybeAggregate(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V
    .registers 13

    iget-object p3, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p3, p2, v0}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/ArrayMap;

    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->hasInsignificantFlag(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    const-string v1, "GroupHelper"

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "This notification is grouped by more group"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :cond_1c
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v3

    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->color:I

    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->visibility:I

    iget-object v7, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v7

    iget-object v8, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    invoke-virtual {p3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_58
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, p2, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    iget v4, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    if-ge v3, v4, :cond_7c

    if-nez v0, :cond_7b

    goto :goto_7c

    :cond_7b
    return-void

    :cond_7c
    :goto_7c
    sget-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    const-string v3, "Found aggregate summary => force grouping"

    const-string v5, " ungrouped notifications => force grouping"

    const-string v6, "Found >="

    if-eqz v0, :cond_93

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lt v0, v4, :cond_90

    invoke-static {v4, v6, v5, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_93

    :cond_90
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    :goto_93
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lt v0, v4, :cond_9d

    invoke-static {v4, v6, v5, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0

    :cond_9d
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/GroupHelper;->makeSummaryAttribute(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroupSummary(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZLcom/android/server/notification/GroupHelper$NotificationAttributes;)V

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/GroupHelper;->aggregateUngroupedNotifications(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/util/Map;)V

    return-void
.end method

.method public final aggregateUngroupedNotifications(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/util/Map;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$3;->addAutoGroup(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :cond_35
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 8

    const-string v0, "    "

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_91

    const-string v2, "    Ungrouped notifications:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_64
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_64

    :catchall_89
    move-exception p0

    goto/16 :goto_187

    :cond_8c
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_91
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_129

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Autogrouped notifications:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_124

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ff
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ff

    :cond_124
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_129
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_185

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Cached canceled summaries:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_180

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/GroupHelper$CachedSummary;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/notification/GroupHelper$CachedSummary;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14f

    :cond_180
    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_185
    monitor-exit v1

    return-void

    :goto_187
    monitor-exit v1
    :try_end_188
    .catchall {:try_start_5 .. :try_end_188} :catchall_89

    throw p0
.end method

.method public findCanceledSummary(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/GroupHelper$CachedSummary;
    .registers 8

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v2, v1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, v1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->userId:I

    if-ne p4, v2, :cond_a

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/GroupHelper$CachedSummary;

    if-eqz v1, :cond_a

    iget v2, v1, Lcom/android/server/notification/GroupHelper$CachedSummary;->id:I

    if-ne v2, p3, :cond_a

    iget-object v2, v1, Lcom/android/server/notification/GroupHelper$CachedSummary;->tag:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v1

    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method

.method public findCanceledSummary(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/notification/GroupHelper$CachedSummary;
    .registers 7

    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-direct {v0, p4, p1, p5}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/GroupHelper$CachedSummary;

    if-eqz p0, :cond_1c

    iget p1, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->id:I

    if-ne p1, p3, :cond_1c

    iget-object p1, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->tag:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1c

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .registers 6

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    monitor-exit v0

    return-object p0

    :catchall_33
    move-exception p0

    goto :goto_62

    :cond_35
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    monitor-exit v0

    return-object p0

    :cond_5f
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_33

    throw p0
.end method

.method public getSparseGroups(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/util/List;Ljava/util/Map;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Landroid/util/ArrayMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/GroupHelper$NotificationSectioner;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_d
    :goto_d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    if-eqz v0, :cond_d

    invoke-virtual {p4, v0}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->isInSection(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    iget v2, p1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->userId:I

    if-ne v1, v2, :cond_d

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_5c
    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "GroupHelper"

    sget-boolean v6, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v4, :cond_b8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    iget-object v7, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v7

    if-nez v7, :cond_5c

    iget-object v7, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8e

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getOriginalGroupKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    :cond_8e
    invoke-static {v4}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v7

    if-eqz v7, :cond_9a

    if-eq v7, p4, :cond_97

    goto :goto_9a

    :cond_97
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    :cond_9a
    :goto_9a
    if-eqz v6, :cond_b6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getNumChildrenForGroupWithSection skip because invalid section: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " r: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b6
    const/4 v3, -0x1

    goto :goto_d4

    :cond_b8
    if-eqz v6, :cond_d4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getNumChildrenForGroupWithSection "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " numChild: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d4
    :goto_d4
    if-lez v3, :cond_d

    const/16 v1, 0x32

    if-ge v3, v1, :cond_d

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_e5
    return-object p0
.end method

.method public final groupSparseGroups(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;Lcom/android/server/notification/GroupHelper$NotificationSectioner;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    invoke-virtual {v0, v5, v2, v4, v3}, Lcom/android/server/notification/GroupHelper;->getSparseGroups(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/util/List;Ljava/util/Map;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    iget v7, v0, Lcom/android/server/notification/GroupHelper;->mAutogroupSparseGroupsAtCount:I

    if-lt v6, v7, :cond_1f2

    sget-boolean v6, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v6, :cond_38

    const-string v6, "GroupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Aggregate sparse groups for: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Section: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mName:Ljava/lang/String;

    invoke-static {v7, v3, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    iget-object v3, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    iget-object v6, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v6, v5, v7}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    iget-object v8, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v8

    if-nez v8, :cond_6b

    iget-object v8, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    goto :goto_6c

    :cond_6b
    const/4 v8, 0x0

    :goto_6c
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_73
    if-ge v10, v9, :cond_1db

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/server/notification/NotificationRecord;

    iget-object v12, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18e

    iget-object v12, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v12

    if-nez v12, :cond_108

    sget-boolean v12, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v12, :cond_ac

    const-string v12, "GroupHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Aggregate notification (sparse group): "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    iget-object v12, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    iget-object v13, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/server/notification/NotificationManagerService$3;->addAutoGroup(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v14

    iget-object v15, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v15

    move-object/from16 p2, v2

    iget-object v2, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->color:I

    move/from16 v16, v2

    iget-object v2, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->visibility:I

    move/from16 v17, v2

    iget-object v2, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v18

    iget-object v2, v11, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v13 .. v19}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    invoke-virtual {v6, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v8, :cond_1d7

    iget-object v2, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto/16 :goto_1d7

    :cond_108
    move-object/from16 p2, v2

    iget-object v2, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_1d7

    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v2, :cond_12e

    const-string v2, "GroupHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Remove app summary (sparse group): "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12e
    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    iget-object v12, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v13, v13, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_13b
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v12}, Lcom/android/server/notification/NotificationManagerService;->removeAppSummaryLocked(Ljava/lang/String;)V

    monitor-exit v13
    :try_end_141
    .catchall {:try_start_13b .. :try_end_141} :catchall_18b

    new-instance v2, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v12, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v12

    iget-object v13, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v12, v13, v14}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    new-instance v13, Lcom/android/server/notification/GroupHelper$CachedSummary;

    iget-object v14, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v14

    iget-object v15, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v16

    iget-object v15, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v17

    iget-object v15, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v18

    iget-object v11, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget-object v15, v11, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-direct/range {v13 .. v18}, Lcom/android/server/notification/GroupHelper$CachedSummary;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v2, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d7

    :catchall_18b
    move-exception v0

    :try_start_18c
    monitor-exit v13
    :try_end_18d
    .catchall {:try_start_18c .. :try_end_18d} :catchall_18b

    throw v0

    :cond_18e
    move-object/from16 p2, v2

    iget-object v2, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d7

    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v2, :cond_1b3

    const-string v2, "GroupHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Aggregate ungrouped (sparse group): "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b3
    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    iget-object v12, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Lcom/android/server/notification/NotificationManagerService$3;->addAutoGroup(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v11, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    invoke-virtual {v6, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d7
    :goto_1d7
    move-object/from16 v2, p2

    goto/16 :goto_73

    :cond_1db
    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v5, v1}, Lcom/android/server/notification/GroupHelper;->makeSummaryAttribute(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1, v7, v2}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroupSummary(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZLcom/android/server/notification/GroupHelper$NotificationAttributes;)V

    iget-object v0, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f2
    return-void
.end method

.method public final isUpdateForCanceledSummary(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 11

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_47

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/GroupHelper;->findCanceledSummary(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/notification/GroupHelper$CachedSummary;

    move-result-object p0

    if-eqz p0, :cond_42

    const/4 v2, 0x1

    :cond_42
    monitor-exit v1

    return v2

    :catchall_44
    move-exception v0

    move-object p0, v0

    goto :goto_49

    :cond_47
    monitor-exit v1

    return v2

    :goto_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_44

    throw p0
.end method

.method public final makeSummaryAttribute(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    .registers 13

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    iget-object v1, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v6, v2, Landroid/app/Notification;->color:I

    iget-object v2, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v7, v2, Landroid/app/Notification;->visibility:I

    iget-object p2, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Lcom/android/server/notification/GroupHelper;->getAutogroupSummaryFlags(Landroid/util/ArrayMap;)I

    move-result v4

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    iget-object v2, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v2

    if-nez v2, :cond_45

    const/4 v2, 0x0

    :try_start_5b
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_96

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_96

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getSourceDrawableResId()I

    move-result v0

    if-eqz v0, :cond_96

    iget-object p1, p1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    check-cast p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getSourceDrawableResId()I

    move-result p0

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v0

    const/high16 v5, -0x40000000  # -2.0f

    mul-float/2addr v0, v5

    invoke-static {p1, p0, v3, v0}, Landroid/graphics/drawable/Icon;->createWithResourceAdaptiveDrawable(Ljava/lang/String;IZF)Landroid/graphics/drawable/Icon;

    move-result-object v2
    :try_end_8c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5b .. :try_end_8c} :catch_8d

    goto :goto_96

    :catch_8d
    move-exception v0

    move-object p0, v0

    const-string p1, "GroupHelper"

    const-string v0, "Failed to getApplicationIcon() in getMonochromeAppIcon()"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_96
    :goto_96
    if-eqz v2, :cond_9a

    move-object v5, v2

    goto :goto_9b

    :cond_9a
    move-object v5, v1

    :goto_9b
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    iget p1, p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    if-eq p1, v3, :cond_9f

    const/4 v3, 0x2

    :cond_b0
    move v8, v3

    new-instance v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    invoke-direct/range {v3 .. v9}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    return-object v3
.end method

.method public final maybeCancelGroupChildrenForCanceledSummary(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    const-string v0, "Found cached summary: "

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_5
    invoke-virtual {p0, p4, p5, p1, p2}, Lcom/android/server/notification/GroupHelper;->findCanceledSummary(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/GroupHelper$CachedSummary;

    move-result-object p1

    if-eqz p1, :cond_38

    sget-boolean p5, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p5, :cond_25

    const-string p5, "GroupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_3a

    :cond_25
    :goto_25
    iget-object p5, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    iget-object v0, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    invoke-virtual {p5, p2, p3, p4, v0}, Lcom/android/server/notification/NotificationManagerService$3;->removeNotificationFromCanceledGroup(IILjava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object p1, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    invoke-direct {p3, p2, p4, p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    monitor-exit v1

    return-void

    :goto_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_23

    throw p0
.end method

.method public final maybeClearCanceledSummariesCache(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Z)V
    .registers 11

    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/notification/GroupHelper$CachedSummary;

    if-eqz p3, :cond_7d

    sget-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Try removing cached summary: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_2e
    if-ge v1, v0, :cond_63

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    iget-object v3, p3, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-ne v3, p2, :cond_2e

    iget-object v2, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_7d

    :cond_63
    new-instance p4, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v0, p3, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    invoke-direct {p4, p2, p1, v0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p2, p4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_7d

    iget-object p2, p3, Lcom/android/server/notification/GroupHelper$CachedSummary;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz p2, :cond_7d

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/android/server/notification/NotificationManagerService;->sendDeleteIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method public final maybeGroupWithSections(Lcom/android/server/notification/NotificationRecord;Z)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "Found >="

    const-string v4, "Found >="

    iget-object v5, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_38

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/GroupHelper;->getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/notification/GroupHelper;->maybeUngroupWithSections(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;)V

    sget-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v0, :cond_94

    const-string v0, "GroupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Skipping autogrouping for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " no valid section found."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_38
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v9, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v9

    invoke-direct {v8, v9, v5, v6}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/GroupHelper;->getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v5

    if-eqz v5, :cond_84

    invoke-virtual {v8, v5}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_84

    sget-boolean v6, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v6, :cond_6b

    const-string v6, "GroupHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Section changed for: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    invoke-virtual {v0, v5, v1}, Lcom/android/server/notification/GroupHelper;->maybeUngroupWithSections(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;)V

    iget-object v6, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    iget-object v5, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    :cond_84
    iget-object v5, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    :cond_94
    return v7

    :cond_95
    iget-object v5, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v5

    :try_start_98
    iget-object v6, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v6, v8, v9}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper;->hasInsignificantFlag(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v9

    if-eqz v9, :cond_b7

    const-string v9, "GroupHelper"

    const-string/jumbo v10, "This notification is grouped by more group"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f3

    :catchall_b4
    move-exception v0

    goto/16 :goto_1b1

    :cond_b7
    iget-object v9, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v11

    iget-object v12, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget v13, v13, Landroid/app/Notification;->color:I

    iget-object v14, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget v14, v14, Landroid/app/Notification;->visibility:I

    iget-object v15, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v15

    iget-object v7, v1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v10 .. v16}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    invoke-virtual {v6, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f3
    iget-object v7, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    iget v9, v0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    if-ge v7, v9, :cond_106

    if-eqz v2, :cond_103

    goto :goto_106

    :cond_103
    const/4 v7, 0x0

    goto/16 :goto_1af

    :cond_106
    :goto_106
    sget-boolean v7, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v7, :cond_132

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    iget v9, v0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    if-lt v7, v9, :cond_12b

    const-string v7, "GroupHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ungrouped notifications => force grouping"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_132

    :cond_12b
    const-string v4, "GroupHelper"

    const-string v7, "Found aggregate summary => force grouping"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_132
    :goto_132
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v4

    iget v7, v0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    if-lt v4, v7, :cond_153

    const-string v4, "GroupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ungrouped notifications => force grouping"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15a

    :cond_153
    const-string v3, "GroupHelper"

    const-string v4, "Found aggregate summary => force grouping"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15a
    iget-object v3, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v3, v8, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    iget-object v4, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v4, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v8, v1}, Lcom/android/server/notification/GroupHelper;->makeSummaryAttribute(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v8, v4, v2, v3}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroupSummary(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZLcom/android/server/notification/GroupHelper$NotificationAttributes;)V

    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    :goto_185
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1aa

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a0

    const/4 v3, 0x1

    move v7, v3

    goto :goto_185

    :cond_1a0
    iget-object v4, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    invoke-virtual {v8}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Lcom/android/server/notification/NotificationManagerService$3;->addAutoGroup(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_185

    :cond_1aa
    iget-object v0, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1af
    monitor-exit v5

    return v7

    :goto_1b1
    monitor-exit v5
    :try_end_1b2
    .catchall {:try_start_98 .. :try_end_1b2} :catchall_b4

    throw v0
.end method

.method public final maybeUngroupWithSections(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;)V
    .registers 15

    const-string v0, "Aggregate group not empty, updating: "

    const-string v1, "Aggregate group is empty: "

    const-string/jumbo v2, "maybeUngroup removeAutoGroup: "

    if-nez p1, :cond_27

    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_26

    const-string p0, "GroupHelper"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Skipping maybeUngroupWithSections for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " no valid section found."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-void

    :cond_27
    iget-object v3, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v6

    :try_start_36
    iget-object v7, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v7, p1, v8}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v8, p1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v7, p1, v8}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    iget-object v8, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_114

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v8, p1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v8, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v8, :cond_8d

    const-string v9, "GroupHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    :catchall_8a
    move-exception p0

    goto/16 :goto_116

    :cond_8d
    :goto_8d
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v9, v2, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v9, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_98
    .catchall {:try_start_36 .. :try_end_98} :catchall_8a

    :try_start_98
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/notification/NotificationRecord;

    if-nez v10, :cond_ad

    const-string v2, "Failed to remove autogroup "

    const-string/jumbo v10, "NotificationService"

    invoke-static {v2, v3, v10}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c6

    :cond_ad
    iget-object v11, v10, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c6

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    const v10, 0x4344e

    invoke-static {v10, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->requestSort()V

    :cond_c6
    :goto_c6
    monitor-exit v9
    :try_end_c7
    .catchall {:try_start_98 .. :try_end_c7} :catchall_111

    :try_start_c7
    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ef

    if-eqz v8, :cond_e0

    const-string p2, "GroupHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e0
    iget-object p2, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    invoke-virtual {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v5, v4, v0}, Lcom/android/server/notification/NotificationManagerService$3;->removeAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_114

    :cond_ef
    if-eqz v8, :cond_102

    const-string v1, "GroupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_102
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/GroupHelper;->makeSummaryAttribute(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    move-result-object v0

    iget-object p2, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroupSummary(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZLcom/android/server/notification/GroupHelper$NotificationAttributes;)V
    :try_end_110
    .catchall {:try_start_c7 .. :try_end_110} :catchall_8a

    goto :goto_114

    :catchall_111
    move-exception p0

    :try_start_112
    monitor-exit v9
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    :try_start_113
    throw p0

    :cond_114
    :goto_114
    monitor-exit v6

    return-void

    :goto_116
    monitor-exit v6
    :try_end_117
    .catchall {:try_start_113 .. :try_end_117} :catchall_8a

    throw p0
.end method

.method public final moveNotificationsToNewSection(ILjava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v3, p3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_18
    if-ge v6, v4, :cond_12b

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;

    iget-object v8, v7, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->record:Lcom/android/server/notification/NotificationRecord;

    iget-object v9, v7, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->oldGroup:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v7, v7, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->newGroup:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    sget-boolean v10, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    const-string v11, "GroupHelper"

    if-eqz v10, :cond_58

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "moveNotificationToNewSection: "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " from: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " regroupingReason: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    const/4 v10, 0x1

    if-eqz v9, :cond_84

    iget-object v12, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v12, v9, v13}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    iget-object v13, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v13, v9, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_84

    new-instance v12, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    invoke-direct {v12, v9, v8, v10}, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;-><init>(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;Z)V

    invoke-virtual {v2, v9, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_84
    iget-object v9, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v1, v9, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v12, 0x3

    const/4 v13, 0x0

    if-ne v9, v12, :cond_a3

    iget-object v7, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7, v13}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    goto/16 :goto_128

    :cond_a3
    iget-object v9, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v9, v7, v12}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v10

    iget-object v10, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v10, v7, v12}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArrayMap;

    invoke-static {v8}, Lcom/android/server/notification/GroupHelper;->hasInsignificantFlag(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v12

    if-eqz v12, :cond_cf

    const-string/jumbo v12, "This notification is grouped by more group"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10f

    :cond_cf
    iget-object v11, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v15

    iget-object v12, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v16

    iget-object v12, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget v12, v12, Landroid/app/Notification;->color:I

    iget-object v5, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->visibility:I

    iget-object v13, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v19

    iget-object v13, v8, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v13}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v20

    move/from16 v18, v5

    move/from16 v17, v12

    invoke-direct/range {v14 .. v20}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    invoke-virtual {v10, v11, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10f
    iget-object v5, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v5, v7, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_128

    new-instance v5, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    invoke-direct {v5, v7, v8, v9}, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;-><init>(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;Z)V

    invoke-virtual {v2, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_128
    :goto_128
    const/4 v5, 0x0

    goto/16 :goto_18

    :cond_12b
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_133
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1bc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v4, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    iget-object v5, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    iget-object v6, v6, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->record:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    iget-boolean v7, v7, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->hasSummary:Z

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v8

    iget v9, v0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    if-ge v8, v9, :cond_179

    if-eqz v7, :cond_17e

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_17e

    :cond_179
    move/from16 v8, p1

    move-object/from16 v9, p2

    goto :goto_19e

    :cond_17e
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_199

    if-eqz v7, :cond_199

    invoke-virtual {v3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    move/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual {v5, v8, v9, v4}, Lcom/android/server/notification/NotificationManagerService$3;->removeAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_133

    :cond_199
    move/from16 v8, p1

    move-object/from16 v9, p2

    goto :goto_133

    :goto_19e
    invoke-static {v6}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v4

    if-nez v4, :cond_1a5

    goto :goto_133

    :cond_1a5
    invoke-virtual {v0, v3, v6}, Lcom/android/server/notification/GroupHelper;->makeSummaryAttribute(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    move-result-object v4

    iget-object v10, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v3, v10, v7, v4}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroupSummary(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZLcom/android/server/notification/GroupHelper$NotificationAttributes;)V

    iget-object v4, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lcom/android/server/notification/GroupHelper;->aggregateUngroupedNotifications(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/util/Map;)V

    goto/16 :goto_133

    :cond_1bc
    return-void
.end method

.method public final onChannelUpdated(ILjava/lang/String;Landroid/app/NotificationChannel;Ljava/util/List;)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :cond_15
    :goto_15
    if-ge v5, v3, :cond_5c

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    iget-object v7, v6, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    if-ne v7, p1, :cond_15

    iget-object v7, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :catchall_5a
    move-exception p0

    goto :goto_61

    :cond_5c
    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/android/server/notification/GroupHelper;->regroupNotifications(ILjava/lang/String;Landroid/util/ArrayMap;Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_5a

    throw p0
.end method

.method public final onGroupUpdated(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_14
    :goto_14
    if-ge v4, v3, :cond_56

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getOriginalGroupKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    if-ne v6, p3, :cond_14

    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :catchall_54
    move-exception p0

    goto :goto_5b

    :cond_56
    invoke-virtual {p0, p3, p1, v2, v1}, Lcom/android/server/notification/GroupHelper;->regroupNotificationsBySummary(ILjava/lang/String;Landroid/util/ArrayMap;Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :goto_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_54

    throw p0
.end method

.method public final onGroupedNotificationRemovedWithDelay(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;)V
    .registers 13

    const-string/jumbo v0, "isGroupSummaryWithoutChild "

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_96

    :cond_d
    iget-boolean v2, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-eqz v2, :cond_13

    goto/16 :goto_96

    :cond_13
    iget-boolean v2, p0, Lcom/android/server/notification/GroupHelper;->mIsTestHarnessExempted:Z

    if-eqz v2, :cond_19

    goto/16 :goto_96

    :cond_19
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v7

    if-nez v7, :cond_3d

    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_96

    const-string p0, "GroupHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Skipping autogrouping for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " no valid section found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3d
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-direct {v8, v2, v1, v7}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    goto :goto_96

    :cond_5d
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_60
    invoke-static {p1, p2}, Lcom/android/server/notification/GroupHelper;->isGroupSummaryWithoutChildren(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_84

    sget-boolean p2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p2, :cond_7f

    const-string p2, "GroupHelper"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    :catchall_7c
    move-exception v0

    move-object p0, v0

    goto :goto_97

    :cond_7f
    :goto_7f
    invoke-virtual {p0, p1, v8, v7}, Lcom/android/server/notification/GroupHelper;->addToUngroupedAndMaybeAggregate(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    monitor-exit v1
    :try_end_83
    .catchall {:try_start_60 .. :try_end_83} :catchall_7c

    return-void

    :cond_84
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    :try_start_88
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/GroupHelper;->groupSparseGroups(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;Lcom/android/server/notification/GroupHelper$NotificationSectioner;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_95

    :catchall_8c
    move-exception v0

    move-object p0, v0

    :try_start_8e
    const-string p1, "GroupHelper"

    const-string p2, "Failed to group sparse groups"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_95
    monitor-exit v1

    :cond_96
    :goto_96
    return-void

    :goto_97
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_8e .. :try_end_98} :catchall_7c

    throw p0
.end method

.method public final onNotificationPosted(Lcom/android/server/notification/NotificationRecord;Z)Z
    .registers 7

    const-string v0, "GroupHelper"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.ongoingActivityNoti.style"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_24

    const-string/jumbo p2, "onNotificationPosted - Ongoing Activity Notification"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/GroupHelper;->maybeUngroupWithSections(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;)V

    return v1

    :catch_22
    move-exception p0

    goto :goto_39

    :cond_24
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/GroupHelper;->maybeGroupWithSections(Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result p0

    return p0

    :cond_31
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/GroupHelper;->maybeUngroupWithSections(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_38} :catch_22

    return v1

    :goto_39
    const-string p1, "Failure processing new notification"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final onNotificationPostedWithDelay(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;)V
    .registers 15

    const-string/jumbo v0, "isGroupChildWithoutSummary OR isGroupSummaryWithoutChild"

    const-string/jumbo v1, "onNotificationPostedWithDelay - isGroupChildWithoutSummary OR isGroupSummaryWithoutChild"

    const-string/jumbo v2, "isGroupSummaryWithChildren record="

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v4

    if-nez v4, :cond_13

    goto/16 :goto_111

    :cond_13
    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.ongoingActivityNoti.style"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2e

    const-string p0, "GroupHelper"

    const-string/jumbo p1, "onNotificationPostedWithDelay - Skipping autogrouping for ongoing notification"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    iget-boolean v4, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-eqz v4, :cond_34

    goto/16 :goto_111

    :cond_34
    iget-boolean v4, p0, Lcom/android/server/notification/GroupHelper;->mIsTestHarnessExempted:Z

    if-eqz v4, :cond_3a

    goto/16 :goto_111

    :cond_3a
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v9

    if-nez v9, :cond_5e

    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_111

    const-string p0, "GroupHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Skipping autogrouping for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " no valid section found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5e
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-direct {v10, v4, v3, v9}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    goto/16 :goto_111

    :cond_7f
    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v4

    :try_start_82
    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v5

    if-nez v5, :cond_8f

    goto :goto_a2

    :cond_8f
    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v5

    if-eqz v5, :cond_9c

    goto :goto_a2

    :cond_9c
    invoke-interface {p3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a8

    :goto_a2
    invoke-static {p1, p2}, Lcom/android/server/notification/GroupHelper;->isGroupSummaryWithoutChildren(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_ab

    :cond_a8
    move-object v5, p0

    move-object v6, p1

    goto :goto_112

    :cond_ab
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    if-eqz v0, :cond_f7

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_cc

    goto :goto_f7

    :cond_cc
    invoke-static {v1, p2}, Lcom/android/server/notification/GroupHelper;->getNumChildrenForGroup(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_f7

    const-string p3, "GroupHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p3

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1, p3, p2}, Lcom/android/server/notification/GroupHelper;->onGroupUpdated(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    monitor-exit v4
    :try_end_f3
    .catchall {:try_start_82 .. :try_end_f3} :catchall_f4

    return-void

    :catchall_f4
    move-exception v0

    move-object p0, v0

    goto :goto_13d

    :cond_f7
    :goto_f7
    :try_start_f7
    const-string v0, "GroupHelper"

    const-string/jumbo v1, "onNotificationPostedWithDelay - groupSparseGroups()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/notification/GroupHelper;->groupSparseGroups(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;Lcom/android/server/notification/GroupHelper$NotificationSectioner;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V
    :try_end_106
    .catchall {:try_start_f7 .. :try_end_106} :catchall_107

    goto :goto_110

    :catchall_107
    move-exception v0

    move-object p0, v0

    :try_start_109
    const-string p1, "GroupHelper"

    const-string p2, "Failed to group sparse groups"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_110
    monitor-exit v4

    :cond_111
    :goto_111
    return-void

    :goto_112
    const-string p0, "GroupHelper"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_138

    const-string p0, "GroupHelper"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_138
    invoke-virtual {v5, v6, v10, v9}, Lcom/android/server/notification/GroupHelper;->addToUngroupedAndMaybeAggregate(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    monitor-exit v4

    return-void

    :goto_13d
    monitor-exit v4
    :try_end_13e
    .catchall {:try_start_109 .. :try_end_13e} :catchall_f4

    throw p0
.end method

.method public final onNotificationRemoved(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Z)V
    .registers 18

    const-string v1, "Aggregate group not empty, updating: "

    const-string v2, "Aggregate group is empty: "

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v3

    if-eqz v3, :cond_28

    new-instance v4, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v7, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    iget-object v8, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8, v3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    goto :goto_2c

    :cond_28
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/GroupHelper;->getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v4

    :goto_2c
    if-nez v4, :cond_4c

    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_4b

    const-string p0, "GroupHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Skipping autogroup cleanup for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " no valid section found."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    return-void

    :cond_4c
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_4f
    iget-object v7, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v7, v4, v8}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    iget-object v8, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v7, v4, v8}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    iget-object v8, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_98

    iget-object v8, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_156

    goto :goto_98

    :catchall_94
    move-exception v0

    move-object p0, v0

    goto/16 :goto_158

    :cond_98
    :goto_98
    iget-object v8, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_d1

    sget-boolean v1, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v1, :cond_c1

    const-string v1, "GroupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c1
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    invoke-virtual {v4}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v5, v2}, Lcom/android/server/notification/NotificationManagerService$3;->removeAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_140

    :cond_d1
    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v2, :cond_e6

    const-string v2, "GroupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e6
    move-object/from16 v1, p2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x0

    move-object v8, p1

    :cond_f0
    :goto_f0
    if-ge v7, v2, :cond_12f

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    check-cast v9, Lcom/android/server/notification/NotificationRecord;

    iget-object v10, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    if-ne v10, v6, :cond_f0

    if-eqz v5, :cond_f0

    iget-object v10, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f0

    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f0

    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v10

    and-int/lit16 v10, v10, 0x200

    if-nez v10, :cond_f0

    if-ne v8, p1, :cond_125

    goto :goto_12d

    :cond_125
    iget-wide v10, v8, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    iget-wide v12, v9, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_f0

    :goto_12d
    move-object v8, v9

    goto :goto_f0

    :cond_12f
    invoke-virtual {p0, v4, v8}, Lcom/android/server/notification/GroupHelper;->makeSummaryAttribute(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    iget v7, v4, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->userId:I

    iget-object v8, v4, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v8, v4, v1}, Lcom/android/server/notification/NotificationManagerService$3;->updateAutogroupSummary(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;)V

    :goto_140
    iget-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-eqz v1, :cond_156

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/GroupHelper;->maybeClearCanceledSummariesCache(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Z)V

    :cond_156
    monitor-exit v3

    return-void

    :goto_158
    monitor-exit v3
    :try_end_159
    .catchall {:try_start_4f .. :try_end_159} :catchall_94

    throw p0
.end method

.method public final onNotificationUpdate(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/GroupHelper;->makeSummaryAttribute(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    move-result-object p1

    iget v1, v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->userId:I

    iget-object v2, v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/android/server/notification/NotificationManagerService$3;->updateAutogroupSummary(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;)V

    return-void
.end method

.method public final regroupNotifications(ILjava/lang/String;Landroid/util/ArrayMap;Ljava/util/Map;)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    iget-object v7, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_21
    :goto_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "GroupHelper"

    sget-boolean v9, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v7, :cond_93

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v10, v7, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    iget v10, v7, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->userId:I

    if-ne v1, v10, :cond_21

    iget-object v10, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArrayMap;

    if-nez v10, :cond_48

    goto :goto_21

    :cond_48
    invoke-virtual {v10}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_50
    :goto_50
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_50

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/notification/NotificationRecord;

    invoke-static {v12}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v12

    if-nez v12, :cond_6f

    goto :goto_50

    :cond_6f
    new-instance v13, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-direct {v13, v1, v2, v12}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    invoke-virtual {v7, v13}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_50

    if-eqz v9, :cond_81

    const-string v12, "Change section on channel update: "

    invoke-static {v12, v11, v8}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    new-instance v12, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    invoke-direct {v12, v14, v7, v13}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    :cond_93
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_122

    new-instance v6, Ljava/util/HashSet;

    iget-object v7, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b0
    :goto_b0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_122

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v10, v7, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b0

    iget v10, v7, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->userId:I

    if-ne v1, v10, :cond_b0

    iget-object v10, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArrayMap;

    if-nez v10, :cond_d3

    goto :goto_b0

    :cond_d3
    new-instance v11, Ljava/util/HashSet;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_e0
    :goto_e0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    if-eqz v13, :cond_e0

    invoke-static {v13}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v14

    if-nez v14, :cond_fb

    goto :goto_e0

    :cond_fb
    new-instance v15, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-direct {v15, v1, v2, v14}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    invoke-virtual {v7, v15}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e0

    if-eqz v9, :cond_10d

    const-string v14, "Change ungrouped section: "

    invoke-static {v14, v12, v8}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10d
    new-instance v14, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;

    invoke-direct {v14, v13, v7, v15}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e0

    :cond_11c
    iget-object v11, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v11, v7, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b0

    :cond_122
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_130

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/notification/GroupHelper;->moveNotificationsToNewSection(ILjava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    :cond_130
    return-void
.end method

.method public final regroupNotificationsBySummary(ILjava/lang/String;Landroid/util/ArrayMap;Ljava/util/Map;)V
    .registers 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    new-instance v2, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v3, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    iget-object v4, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    new-instance v3, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getOriginalGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, p2, v4}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_40
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_49

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/server/notification/GroupHelper;->moveNotificationsToNewSection(ILjava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    :cond_49
    return-void
.end method

.method public final updateAggregateAppGroupSummary(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZLcom/android/server/notification/GroupHelper$NotificationAttributes;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    const-string v3, "GroupHelper"

    sget-boolean v4, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-nez p3, :cond_1a1

    if-eqz v4, :cond_1f

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Create aggregate summary: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget v7, v1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->userId:I

    iget-object v5, v1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v8, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    iget-object v9, v8, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v9, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v0, v5, v7}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v10

    iget-object v11, v9, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_34
    iget-object v0, v9, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    if-nez v13, :cond_4b

    monitor-exit v11

    move-object v1, v8

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto/16 :goto_175

    :catchall_47
    move-exception v0

    move-object v6, v11

    goto/16 :goto_19f

    :cond_4b
    iget-object v0, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v20

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v21

    iget-object v1, v9, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_6c

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    :cond_6c
    iget-object v3, v9, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    if-nez v3, :cond_14b

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.appInfo"

    const-class v15, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v6, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v15, "android.appInfo"

    invoke-virtual {v6, v15, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v15, Landroid/app/Notification$Builder;

    invoke-virtual {v9}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v15, v14, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v15, v4}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v15, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    invoke-virtual {v4, v15}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v15, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    invoke-virtual {v4, v15, v14}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v15, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    invoke-virtual {v4, v15}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v2, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v15

    iget-object v2, v15, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {v9}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_f8

    move-object v4, v0

    iget-object v0, v9, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v3, v1

    const/4 v1, 0x0

    move-object/from16 v16, v3

    const/high16 v3, 0x4000000

    move-object/from16 v17, v4

    const/4 v4, 0x0

    move-object/from16 v22, v16

    invoke-virtual/range {v0 .. v6}, Landroid/app/ActivityManagerInternal;->getPendingIntentActivityAsApp(ILandroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v15, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :goto_f6
    move-object v0, v8

    goto :goto_fd

    :cond_f8
    move-object/from16 v17, v0

    move-object/from16 v22, v1

    goto :goto_f6

    :goto_fd
    new-instance v8, Landroid/service/notification/StatusBarNotification;

    move-object v1, v9

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    move v2, v10

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v10

    move-object v3, v13

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v13

    move v4, v14

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v14

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18
    :try_end_11b
    .catchall {:try_start_34 .. :try_end_11b} :catchall_47

    move-object v6, v11

    const/4 v11, 0x0

    move-object/from16 v17, v12

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    const/4 v0, 0x0

    :try_start_124
    invoke-direct/range {v8 .. v19}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    new-instance v15, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-direct {v15, v9, v8, v10}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V

    iput-boolean v3, v15, Lcom/android/server/notification/NotificationRecord;->mImportanceFixed:Z

    iget-boolean v3, v4, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    iput-boolean v3, v15, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->calculateUserSentiment()V

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v8, v22

    invoke-virtual {v8, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_150

    :catchall_149
    move-exception v0

    goto :goto_19f

    :cond_14b
    move-object v1, v8

    move-object v2, v9

    move-object v6, v11

    const/4 v0, 0x0

    move-object v15, v0

    :goto_150
    if-eqz v15, :cond_173

    iget-object v3, v15, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v16

    iget-object v3, v15, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x1

    move/from16 v14, v20

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v18, v15

    move/from16 v15, v21

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;ZZ)Z

    move-result v2

    if-eqz v2, :cond_173

    monitor-exit v6

    move-object/from16 v8, v18

    goto :goto_175

    :cond_173
    monitor-exit v6
    :try_end_174
    .catchall {:try_start_124 .. :try_end_174} :catchall_149

    move-object v8, v0

    :goto_175
    if-eqz v8, :cond_19e

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2, v5}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_185

    const/4 v9, 0x1

    goto :goto_187

    :cond_185
    const/4 v14, 0x0

    move v9, v14

    :goto_187
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v6, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v5, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    iget-object v2, v6, Lcom/android/server/notification/NotificationManagerService;->mPostNotificationTrackerFactory:Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    invoke-direct {v11, v0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;-><init>(Landroid/os/PowerManager$WakeLock;)V

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_19e
    return-void

    :goto_19f
    :try_start_19f
    monitor-exit v6
    :try_end_1a0
    .catchall {:try_start_19f .. :try_end_1a0} :catchall_149

    throw v0

    :cond_1a1
    if-eqz v4, :cond_1b5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Update aggregate summary: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b5
    iget v3, v1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->userId:I

    iget-object v4, v1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/NotificationManagerService$3;

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/server/notification/NotificationManagerService$3;->updateAutogroupSummary(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;)V

    return-void
.end method
