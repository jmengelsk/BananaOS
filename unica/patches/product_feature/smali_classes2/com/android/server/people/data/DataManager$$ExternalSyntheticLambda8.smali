.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:Lcom/android/server/people/data/PackageData;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/PackageData;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/people/data/DataManager;

    iput-object p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/people/data/PackageData;

    iput-object p3, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$2:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/people/data/DataManager;

    iput-object p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$2:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/people/data/PackageData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/people/data/DataManager;

    iget-object v1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$2:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/people/data/PackageData;

    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    const/16 v2, 0x4000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/people/data/DataManager;

    iget-object v1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/people/data/PackageData;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$2:Ljava/util/List;

    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    iget v2, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    const/16 v3, 0x4000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    iget-wide v4, p1, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    iget-object v2, v1, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/people/data/PackageData;->mUserId:I

    iget-object v3, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
