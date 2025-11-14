.class public final Lcom/android/server/people/data/MmsQueryHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCurrentCountryIso:Ljava/lang/String;

.field public final mEventConsumer:Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

.field public mLastMessageTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/people/data/MmsQueryHelper;->mEventConsumer:Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

    const-string/jumbo p2, "country_detector"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/CountryDetector;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/android/server/people/data/MmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMmsAddress(ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string/jumbo v1, "MmsQueryHelper"

    invoke-static {p2}, Landroid/provider/Telephony$Mms$Addr;->getAddrUriForMessage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo p2, "address"

    const-string/jumbo v0, "type"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    :try_start_1
    const-string p1, "Cursor is null when querying MMS address table."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v8

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v3, v8

    goto :goto_3

    :cond_0
    return-object v8

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, v8

    goto :goto_1

    :cond_1
    move-object v3, v8

    :cond_2
    :goto_0
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne p1, v5, :cond_3

    const/16 v5, 0x89

    if-eq v4, v5, :cond_4

    :cond_3
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    const/16 v5, 0x97

    if-ne v4, v5, :cond_2

    :cond_4
    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_5
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :goto_1
    if-eqz v2, :cond_6

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p2, v0

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_3
    const-string p2, "Exception when querying MMS address table."

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    invoke-static {v3}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    return-object v8

    :cond_7
    iget-object p0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v3, p0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
