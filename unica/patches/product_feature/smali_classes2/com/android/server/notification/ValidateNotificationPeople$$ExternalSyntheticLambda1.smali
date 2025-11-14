.class public final synthetic Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/ValidateNotificationPeople;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;ILandroid/content/Context;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iput p2, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    iput p4, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget v2, v0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$1:I

    iget-object v3, v0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    iget v4, v0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$3:I

    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const-string/jumbo v5, "ValidateNoPeople"

    if-eq v2, v0, :cond_30

    const-string/jumbo v0, "There was a contact change by profile user.  userId="

    const-string v1, " currentUser="

    invoke-static {v2, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_30
    iget-object v0, v1, Lcom/android/server/notification/ValidateNotificationPeople;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    if-nez v0, :cond_3b

    const-string/jumbo v0, "skipping - no zen info available"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3b
    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v6}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/os/UserHandle;)Landroid/app/NotificationManager$Policy;

    move-result-object v6

    if-nez v6, :cond_48

    goto/16 :goto_141

    :cond_48
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, ""

    const-string v9, "@"

    invoke-static {v2, v8, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_112

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7b

    goto/16 :goto_112

    :cond_7b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7f
    :goto_7f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_112

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v14, ";"

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v8, v0

    const/4 v10, 0x1

    if-le v8, v10, :cond_7f

    :try_start_95
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "contact_id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    aget-object v11, v0, v15

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_b5
    .catchall {:try_start_95 .. :try_end_b5} :catchall_fd

    if-eqz v8, :cond_e9

    :try_start_b7
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_e9

    const-string/jumbo v10, "data1"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "There is a contact has been updated."

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v0, v0, v15

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f7

    :catchall_e6
    move-exception v0

    move-object v10, v0

    goto :goto_ff

    :cond_e9
    if-nez v8, :cond_f1

    const-string v0, "Failed to query the contact."

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7

    :cond_f1
    const-string/jumbo v0, "There is a contact has been deleted."

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catchall {:try_start_b7 .. :try_end_f7} :catchall_e6

    :goto_f7
    if-eqz v8, :cond_7f

    :try_start_f9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_fc
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_fd

    goto :goto_7f

    :catchall_fd
    move-exception v0

    goto :goto_10a

    :goto_ff
    if-eqz v8, :cond_109

    :try_start_101
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_104
    .catchall {:try_start_101 .. :try_end_104} :catchall_105

    goto :goto_109

    :catchall_105
    move-exception v0

    :try_start_106
    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_109
    :goto_109
    throw v10
    :try_end_10a
    .catchall {:try_start_106 .. :try_end_10a} :catchall_fd

    :goto_10a
    const-string/jumbo v8, "Problem getting content resolver or performing contacts query."

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7f

    :cond_112
    :goto_112
    new-instance v10, Landroid/app/NotificationManager$Policy;

    iget v11, v6, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v12, v6, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v13, v6, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v14, v6, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v15, v6, Landroid/app/NotificationManager$Policy;->state:I

    iget v0, v6, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    iget v3, v6, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    iget v7, v6, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    invoke-virtual {v6}, Landroid/app/NotificationManager$Policy;->getAppBypassDndList()Ljava/util/List;

    move-result-object v20

    move/from16 v16, v0

    move-object/from16 v18, v2

    move/from16 v17, v3

    move/from16 v19, v7

    invoke-direct/range {v10 .. v20}, Landroid/app/NotificationManager$Policy;-><init>(IIIIIIILjava/util/List;ILjava/util/List;)V

    iget-object v0, v1, Lcom/android/server/notification/ValidateNotificationPeople;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v10, v2, v4}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/os/UserHandle;Landroid/app/NotificationManager$Policy;II)V

    const-string/jumbo v0, "The contacts of policy has been updated."

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_141
    return-void
.end method
