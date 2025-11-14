.class Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
.super Lcom/android/server/notification/RankingReconsideration;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mContactAffinity:F

.field public final mContext:Landroid/content/Context;

.field public final mPendingLookups:Ljava/util/LinkedList;

.field public mPhoneNumbers:Landroid/util/ArraySet;

.field public mRecord:Lcom/android/server/notification/NotificationRecord;

.field public final synthetic this$0:Lcom/android/server/notification/ValidateNotificationPeople;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/notification/RankingReconsideration;-><init>(JLjava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPhoneNumbers:Landroid/util/ArraySet;

    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPendingLookups:Ljava/util/LinkedList;

    return-void
.end method

.method public static addContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V
    .registers 11

    const-string/jumbo v1, "ValidateNoPeople"

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/server/notification/ValidateNotificationPeople;->LOOKUP_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1f

    if-nez p1, :cond_25

    :try_start_13
    const-string/jumbo p0, "Null cursor from contacts query."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_22

    if-eqz p1, :cond_41

    :cond_1b
    :try_start_1b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v0

    move-object p0, v0

    goto :goto_3b

    :catchall_22
    move-exception v0

    move-object p0, v0

    goto :goto_2f

    :cond_25
    :goto_25
    :try_start_25
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mergeContact(Landroid/database/Cursor;)V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_22

    goto :goto_25

    :goto_2f
    if-eqz p1, :cond_3a

    :try_start_31
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_3a

    :catchall_35
    move-exception v0

    move-object p1, v0

    :try_start_37
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3a
    :goto_3a
    throw p0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_1f

    :goto_3b
    const-string/jumbo p1, "Problem getting content resolver or performing contacts query."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_41
    return-void
.end method

.method public static searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 10

    new-instance v0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    invoke-direct {v0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;-><init>()V

    invoke-static {p1}, Landroid/provider/ContactsContract$Contacts;->createCorpLookupUriFromEnterpriseLookupUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_f

    invoke-static {v0, p0, p1}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->addContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0

    :cond_f
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_22
    const/4 v5, -0x1

    if-ge v4, v3, :cond_3e

    aget v6, v2, v4

    invoke-virtual {p1, v6}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v7

    if-eqz v7, :cond_2e

    goto :goto_3f

    :cond_2e
    invoke-virtual {p1, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_3b

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v7

    if-eqz v7, :cond_3b

    goto :goto_3f

    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_3e
    move v6, v5

    :goto_3f
    if-ne v6, v5, :cond_57

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Work profile user ID not found for work contact: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "ValidateNoPeople"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_57
    invoke-static {v1, v6}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->addContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static searchContactsAndLookupNumbers(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 10

    const-string/jumbo v1, "ValidateNoPeople"

    invoke-static {p0, p1}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object p1

    iget-boolean v0, p1, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mHasPhone:Z

    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_f

    :cond_d
    iget-object v0, p1, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneLookupKey:Ljava/lang/String;

    :goto_f
    if-eqz v0, :cond_54

    const-string/jumbo v5, "lookup = ?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    :try_start_18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/server/notification/ValidateNotificationPeople;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_32

    if-nez p0, :cond_38

    :try_start_27
    const-string v0, "Cursor is null when querying contact phone number."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_35

    if-eqz p0, :cond_54

    :cond_2e
    :try_start_2e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    return-object p1

    :catchall_32
    move-exception v0

    move-object p0, v0

    goto :goto_4e

    :catchall_35
    move-exception v0

    move-object v2, v0

    goto :goto_42

    :cond_38
    :goto_38
    :try_start_38
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1, p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mergePhoneNumber(Landroid/database/Cursor;)V
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_35

    goto :goto_38

    :goto_42
    if-eqz p0, :cond_4d

    :try_start_44
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4d

    :catchall_48
    move-exception v0

    move-object p0, v0

    :try_start_4a
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4d
    :goto_4d
    throw v2
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_32

    :goto_4e
    const-string/jumbo v0, "Problem getting content resolver or querying phone numbers."

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_54
    return-object p1
.end method


# virtual methods
.method public final applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4

    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    iget v1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPhoneNumbers:Landroid/util/ArraySet;

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_27

    :cond_17
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mPhoneNumbers:Landroid/util/ArraySet;

    if-nez v0, :cond_22

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mPhoneNumbers:Landroid/util/ArraySet;

    :cond_22
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->mPhoneNumbers:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public final work()V
    .registers 11

    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPendingLookups:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_14f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-static {v6, v3}, Lcom/android/server/notification/ValidateNotificationPeople;->getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v7, v7, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    monitor-enter v7

    :try_start_29
    iget-object v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v8, v8, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    invoke-virtual {v8, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    if-eqz v8, :cond_3f

    invoke-virtual {v8}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z

    move-result v9

    if-nez v9, :cond_3f

    goto :goto_40

    :catchall_3c
    move-exception p0

    goto/16 :goto_14d

    :cond_3f
    move v4, v5

    :goto_40
    monitor-exit v7
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_3c

    if-nez v4, :cond_e8

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v7, "tel"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_76

    sget-boolean v7, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v7, :cond_61

    const-string/jumbo v7, "ValidateNoPeople"

    const-string/jumbo v8, "checking telephone URI: "

    invoke-static {v8, v3, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v8

    goto :goto_e8

    :cond_76
    const-string/jumbo v7, "mailto"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a5

    sget-boolean v7, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v7, :cond_90

    const-string/jumbo v7, "ValidateNoPeople"

    const-string/jumbo v8, "checking mailto URI: "

    invoke-static {v8, v3, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_90
    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v8

    goto :goto_e8

    :cond_a5
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c9

    sget-boolean v7, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v7, :cond_c2

    const-string/jumbo v7, "ValidateNoPeople"

    const-string/jumbo v8, "checking lookup URI: "

    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c2
    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->searchContactsAndLookupNumbers(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v8

    goto :goto_e8

    :cond_c9
    new-instance v8, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    invoke-direct {v8}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;-><init>()V

    const-string/jumbo v7, "name"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e8

    const-string/jumbo v5, "ValidateNoPeople"

    const-string/jumbo v7, "unsupported URI "

    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e8
    :goto_e8
    if-eqz v8, :cond_13e

    if-nez v4, :cond_fd

    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v3, v3, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    monitor-enter v3

    :try_start_f1
    iget-object v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v4, v4, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    invoke-virtual {v4, v6, v8}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_fd

    :catchall_fa
    move-exception p0

    monitor-exit v3
    :try_end_fc
    .catchall {:try_start_f1 .. :try_end_fc} :catchall_fa

    throw p0

    :cond_fd
    :goto_fd
    sget-boolean v3, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v3, :cond_11a

    const-string/jumbo v3, "ValidateNoPeople"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "lookup contactAffinity is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11a
    iget v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    invoke-virtual {v8}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    iget-object v3, v8, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneNumbers:Landroid/util/ArraySet;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPhoneNumbers:Landroid/util/ArraySet;

    if-nez v3, :cond_135

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPhoneNumbers:Landroid/util/ArraySet;

    :cond_135
    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPhoneNumbers:Landroid/util/ArraySet;

    iget-object v4, v8, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneNumbers:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto/16 :goto_c

    :cond_13e
    sget-boolean v3, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string/jumbo v3, "ValidateNoPeople"

    const-string/jumbo v4, "lookupResult is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :goto_14d
    :try_start_14d
    monitor-exit v7
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_3c

    throw p0

    :cond_14f
    sget-boolean v2, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v2, :cond_173

    const-string/jumbo v2, "ValidateNoPeople"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Validation finished in "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_173
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    if-eqz v0, :cond_190

    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v1, v1, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    iget p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    if-lez v2, :cond_184

    move v2, v4

    goto :goto_185

    :cond_184
    move v2, v5

    :goto_185
    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float p0, p0, v3

    if-nez p0, :cond_18c

    goto :goto_18d

    :cond_18c
    move v4, v5

    :goto_18d
    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/android/server/notification/NotificationUsageStats;->registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V

    :cond_190
    return-void
.end method
