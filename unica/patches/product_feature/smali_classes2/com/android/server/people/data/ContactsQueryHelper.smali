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
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 16

    const-string v1, "ContactsQueryHelper"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_5
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
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_14} :catch_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_14} :catch_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_21

    if-nez p1, :cond_3b

    :try_start_16
    const-string p2, "Cursor is null when querying contact."

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_34

    if-eqz p1, :cond_33

    :try_start_1d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_20} :catch_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_20} :catch_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    return v4

    :catch_21
    move-exception v0

    move-object p1, v0

    move p2, v4

    move p3, p2

    goto/16 :goto_c5

    :catch_27
    move-exception v0

    move-object p1, v0

    move p2, v4

    move p3, p2

    goto/16 :goto_cb

    :catch_2d
    move-exception v0

    move-object p1, v0

    move p2, v4

    move p3, p2

    goto/16 :goto_d1

    :cond_33
    return v4

    :catchall_34
    move-exception v0

    move-object p2, v0

    move-object v5, v3

    move p3, v4

    move v3, p3

    goto/16 :goto_a6

    :cond_3b
    move p2, v4

    move p3, p2

    :goto_3d
    :try_start_3d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_99

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

    if-eqz v0, :cond_6e

    move v0, v2

    goto :goto_6f

    :cond_6e
    move v0, v4

    :goto_6f
    iput-boolean v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mIsStarred:Z

    const-string/jumbo v0, "has_phone_number"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-eqz p2, :cond_80

    move p2, v2

    goto :goto_81

    :cond_80
    move p2, v4

    :goto_81
    const-string/jumbo v0, "contact_last_updated_timestamp"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_97

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mLastUpdatedTimestamp:J
    :try_end_90
    .catchall {:try_start_3d .. :try_end_90} :catchall_91

    goto :goto_97

    :catchall_91
    move-exception v0

    move-object v5, v3

    move v3, p3

    move p3, p2

    move-object p2, v0

    goto :goto_a6

    :cond_97
    :goto_97
    move p3, v2

    goto :goto_3d

    :cond_99
    :try_start_99
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_9c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_99 .. :try_end_9c} :catch_a3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_99 .. :try_end_9c} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_d7

    :catch_9d
    move-exception v0

    move-object p1, v0

    goto :goto_c5

    :catch_a0
    move-exception v0

    move-object p1, v0

    goto :goto_cb

    :catch_a3
    move-exception v0

    move-object p1, v0

    goto :goto_d1

    :goto_a6
    if-eqz p1, :cond_c4

    :try_start_a8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_ac

    goto :goto_c4

    :catchall_ac
    move-exception v0

    move-object p1, v0

    :try_start_ae
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_c4

    :catch_b2
    move-exception v0

    move-object p1, v0

    move p2, p3

    move p3, v3

    move-object v3, v5

    goto :goto_c5

    :catch_b8
    move-exception v0

    move-object p1, v0

    move p2, p3

    move p3, v3

    move-object v3, v5

    goto :goto_cb

    :catch_be
    move-exception v0

    move-object p1, v0

    move p2, p3

    move p3, v3

    move-object v3, v5

    goto :goto_d1

    :cond_c4
    :goto_c4
    throw p2
    :try_end_c5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ae .. :try_end_c5} :catch_be
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ae .. :try_end_c5} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_c5} :catch_b2

    :goto_c5
    const-string v0, "Exception when querying contacts."

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d7

    :goto_cb
    const-string v0, "Illegal Argument exception when querying contacts."

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d7

    :goto_d1
    const-string/jumbo v0, "SQLite exception when querying contacts."

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d7
    if-eqz p3, :cond_136

    if-eqz v3, :cond_136

    if-eqz p2, :cond_136

    const-string/jumbo p1, "data4"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "lookup = ?"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    :try_start_eb
    iget-object p2, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_f8} :catch_106

    if-nez p2, :cond_10c

    :try_start_fa
    const-string p0, "Cursor is null when querying contact phone number."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catchall {:try_start_fa .. :try_end_ff} :catchall_109

    if-eqz p2, :cond_104

    :try_start_101
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_104} :catch_106

    :cond_104
    :goto_104
    move v2, v4

    goto :goto_135

    :catch_106
    move-exception v0

    move-object p0, v0

    goto :goto_12f

    :catchall_109
    move-exception v0

    move-object p0, v0

    goto :goto_123

    :cond_10c
    :goto_10c
    :try_start_10c
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_11f

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    if-ltz p3, :cond_10c

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mPhoneNumber:Ljava/lang/String;
    :try_end_11e
    .catchall {:try_start_10c .. :try_end_11e} :catchall_109

    goto :goto_10c

    :cond_11f
    :try_start_11f
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_122} :catch_106

    goto :goto_135

    :goto_123
    if-eqz p2, :cond_12e

    :try_start_125
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_128
    .catchall {:try_start_125 .. :try_end_128} :catchall_129

    goto :goto_12e

    :catchall_129
    move-exception v0

    move-object p1, v0

    :try_start_12b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_12e
    :goto_12e
    throw p0
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_12f} :catch_106

    :goto_12f
    const-string p1, "Exception when querying contact phone number."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_104

    :goto_135
    return v2

    :cond_136
    return p3
.end method
