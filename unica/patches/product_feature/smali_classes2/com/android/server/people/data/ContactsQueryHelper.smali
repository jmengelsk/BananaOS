.class public final Lcom/android/server/people/data/ContactsQueryHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mContactUri:Landroid/net/Uri;

.field public final mContext:Landroid/content/Context;

.field public mIsStarred:Z

.field public mLastUpdatedTimestamp:J

.field public mPhoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 11

    const-string v1, "ContactsQueryHelper"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v10, 0x0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    :try_start_1
    const-string p2, "Cursor is null when querying contact."

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v4

    :catch_0
    move-exception v0

    move-object p1, v0

    move p2, v4

    move p3, p2

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object p1, v0

    move p2, v4

    move p3, p2

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object p1, v0

    move p2, v4

    move p3, p2

    goto/16 :goto_8

    :cond_0
    return v4

    :catchall_0
    move-exception v0

    move-object p2, v0

    move-object v5, v3

    move p3, v4

    move v3, p3

    goto/16 :goto_4

    :cond_1
    move p2, v4

    move p3, p2

    :goto_0
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string/jumbo v0, "lookup"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContactUri:Landroid/net/Uri;

    const-string/jumbo v0, "starred"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mIsStarred:Z

    const-string/jumbo v0, "has_phone_number"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_2

    :cond_3
    move p2, v4

    :goto_2
    const-string/jumbo v0, "contact_last_updated_timestamp"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mLastUpdatedTimestamp:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v5, v3

    move v3, p3

    move p3, p2

    move-object p2, v0

    goto :goto_4

    :cond_4
    :goto_3
    move p3, v2

    goto :goto_0

    :cond_5
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    move-object p1, v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object p1, v0

    goto :goto_7

    :catch_5
    move-exception v0

    move-object p1, v0

    goto :goto_8

    :goto_4
    if-eqz p1, :cond_6

    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object p1, v0

    :try_start_6
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_6
    move-exception v0

    move-object p1, v0

    move p2, p3

    move p3, v3

    move-object v3, v5

    goto :goto_6

    :catch_7
    move-exception v0

    move-object p1, v0

    move p2, p3

    move p3, v3

    move-object v3, v5

    goto :goto_7

    :catch_8
    move-exception v0

    move-object p1, v0

    move p2, p3

    move p3, v3

    move-object v3, v5

    goto :goto_8

    :cond_6
    :goto_5
    throw p2
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    const-string v0, "Exception when querying contacts."

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :goto_7
    const-string v0, "Illegal Argument exception when querying contacts."

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :goto_8
    const-string/jumbo v0, "SQLite exception when querying contacts."

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    if-eqz p3, :cond_b

    if-eqz v3, :cond_b

    if-eqz p2, :cond_b

    const-string/jumbo p1, "data4"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "lookup = ?"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    :try_start_7
    iget-object p2, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    if-nez p2, :cond_8

    :try_start_8
    const-string p0, "Cursor is null when querying contact phone number."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz p2, :cond_7

    :try_start_9
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :cond_7
    :goto_a
    move v2, v4

    goto :goto_f

    :catch_9
    move-exception v0

    move-object p0, v0

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_c

    :cond_8
    :goto_b
    :try_start_a
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    if-ltz p3, :cond_8

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mPhoneNumber:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_b

    :cond_9
    :try_start_b
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_f

    :goto_c
    if-eqz p2, :cond_a

    :try_start_c
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object p1, v0

    :try_start_d
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_d
    throw p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :goto_e
    const-string p1, "Exception when querying contact phone number."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_f
    return v2

    :cond_b
    return p3
.end method
