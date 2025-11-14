.class public final Lcom/android/server/people/PeopleService$1;
.super Landroid/app/people/IPeopleManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/people/PeopleService;


# direct methods
.method public constructor <init>(Lcom/android/server/people/PeopleService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-direct {p0}, Landroid/app/people/IPeopleManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final addOrUpdateStatus(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/ConversationStatus;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->-$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)V

    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/app/people/ConversationStatus;->getStartTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(ILjava/lang/String;)Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v1, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iget-object v3, v1, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iget-object v4, v1, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    invoke-virtual {p4}, Landroid/app/people/ConversationStatus;->getId()Ljava/lang/String;

    move-result-object v5

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/server/people/data/ConversationInfo;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v5, v6, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iput-object v2, v6, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iput-object v3, v6, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iget-object v2, v1, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iput-object v2, v6, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iput-object v2, v6, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iput-object v2, v6, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iget-wide v2, v1, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    iput-wide v2, v6, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    iget-wide v2, v1, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iput-wide v2, v6, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iget v2, v1, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iput v2, v6, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iget v1, v1, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iput v1, v6, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iput-object v4, v6, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    invoke-virtual {p0, v0, v6, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    invoke-virtual {p4}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mStatusExpReceiver:Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "ConversationStatusExpiration"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v4, "expStatus"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/app/people/ConversationStatus;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p3, 0x10000000

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo p3, "userId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0xc000000

    const/16 p3, 0xa

    invoke-static {p0, p3, p1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-class p2, Landroid/app/AlarmManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    invoke-virtual {p4}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    move-result-wide p2

    const/4 p4, 0x0

    invoke-virtual {p0, p4, p2, p3, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Start time must be in the past"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final clearStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->-$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)V

    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(ILjava/lang/String;)Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p3, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iget-object v2, p3, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iget-object v3, p3, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p3, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/people/data/ConversationInfo;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object p4, v4, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iput-object v1, v4, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iput-object v2, v4, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iget-object p4, p3, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iput-object p4, v4, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iget-object p4, p3, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iput-object p4, v4, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iget-object p4, p3, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iput-object p4, v4, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iget-wide v1, p3, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    iput-wide v1, v4, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    iget-wide v1, p3, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iput-wide v1, v4, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iget p4, p3, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iput p4, v4, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iget p3, p3, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iput p3, v4, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iput-object v3, v4, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    invoke-virtual {p0, v0, v4, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    return-void
.end method

.method public final clearStatuses(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->-$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)V

    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(ILjava/lang/String;)Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p3, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iget-object v2, p3, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iget-object v3, p3, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v4, p3, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/people/data/ConversationInfo;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v4, v5, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iput-object v1, v5, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iput-object v2, v5, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iget-object v1, p3, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iput-object v1, v5, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iget-object v1, p3, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iput-object v1, v5, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iget-object v1, p3, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iput-object v1, v5, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iget-wide v1, p3, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    iput-wide v1, v5, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    iget-wide v1, p3, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iput-wide v1, v5, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iget v1, p3, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iput v1, v5, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iget p3, p3, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iput p3, v5, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iput-object v3, v5, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    invoke-virtual {p0, v0, v5, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p3, "PeopleService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "DataManager dump"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    iget-object p3, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UserId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/people/data/UserData;

    iget-boolean v0, p3, Lcom/android/server/people/data/UserData;->mIsUnlocked:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", mPackageDataMap size : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p3, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p3, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    check-cast p3, Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/PackageData;

    const-string/jumbo v1, "packageName"

    iget-object v2, v0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, v0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "mConversationInfoMap"

    iget-object v2, v0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "mLocusIdToShortcutIdMap"

    iget-object v2, v0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "mContactUriToShortcutIdMap"

    iget-object v2, v0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "mPhoneNumberToShortcutIdMap"

    iget-object v2, v0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "mNotifChannelIdToShortcutIdMap"

    iget-object v2, v0, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public final getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;
    .locals 3

    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "get conversation"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/PackageData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0, p3}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLastInteraction(Ljava/lang/String;ILjava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "get last interaction"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/people/data/DataManager;->getPackage(ILjava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {p0, p3}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-wide p0, p0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getRecentConversations()Landroid/content/pm/ParceledListSlice;
    .locals 5

    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "get recent conversations"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;I)V

    invoke-virtual {p0, v1, v3}, Lcom/android/server/people/data/DataManager;->forPackagesInProfile(ILjava/util/function/Consumer;)V

    invoke-direct {v0, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getStatuses(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->-$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)V

    invoke-static {}, Lcom/android/server/people/PeopleService;->isSystemOrRoot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(ILjava/lang/String;)Lcom/android/server/people/data/ConversationStore;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {v0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final isConversation(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_PEOPLE_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->-$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)V

    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/PackageData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0, p3}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller doesn\'t have READ_PEOPLE_DATA permission."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerConversationListener(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/IConversationListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "register conversation listener"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getConversationListenerHelper()Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    move-result-object p0

    new-instance v0, Lcom/android/server/people/PeopleService$ListenerKey;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/people/PeopleService$ListenerKey;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1, p4}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    iget-object p1, p0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1, p4, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final removeAllRecentConversations()V
    .locals 4

    invoke-static {}, Lcom/android/server/people/PeopleService;->isSystemOrRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/people/data/DataManager;JI)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/people/data/DataManager;->forPackagesInProfile(ILjava/util/function/Consumer;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "Only system may "

    const-string/jumbo v1, "remove all recent conversations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeRecentConversation(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/android/server/people/PeopleService;->isSystemOrRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v7, 0x4000

    move-object v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Only system may "

    const-string/jumbo p2, "remove a recent conversation"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final unregisterConversationListener(Landroid/app/people/IConversationListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "unregister conversation listener"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getConversationListenerHelper()Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
