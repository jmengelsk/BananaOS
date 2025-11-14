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
    .registers 3

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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/people/data/MmsQueryHelper;->mEventConsumer:Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

    const-string/jumbo p2, "country_detector"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/CountryDetector;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object p1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    if-nez p1, :cond_28

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    :cond_28
    iput-object p1, p0, Lcom/android/server/people/data/MmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMmsAddress(ILjava/lang/String;)Ljava/lang/String;
    .registers 12

    const-string/jumbo v1, "MmsQueryHelper"

    invoke-static {p2}, Landroid/provider/Telephony$Mms$Addr;->getAddrUriForMessage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo p2, "address"

    const-string/jumbo v0, "type"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    :try_start_12
    iget-object v2, p0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_2c

    if-nez v2, :cond_35

    :try_start_21
    const-string p1, "Cursor is null when querying MMS address table."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_31

    if-eqz v2, :cond_30

    :try_start_28
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    return-object v8

    :catch_2c
    move-exception v0

    move-object p1, v0

    move-object v3, v8

    goto :goto_71

    :cond_30
    return-object v8

    :catchall_31
    move-exception v0

    move-object p1, v0

    move-object v3, v8

    goto :goto_65

    :cond_35
    move-object v3, v8

    :cond_36
    :goto_36
    :try_start_36
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne p1, v5, :cond_4b

    const/16 v5, 0x89

    if-eq v4, v5, :cond_52

    :cond_4b
    const/4 v5, 0x2

    if-ne p1, v5, :cond_36

    const/16 v5, 0x97

    if-ne v4, v5, :cond_36

    :cond_52
    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_5a
    .catchall {:try_start_36 .. :try_end_5a} :catchall_5b

    goto :goto_36

    :catchall_5b
    move-exception v0

    move-object p1, v0

    goto :goto_65

    :cond_5e
    :try_start_5e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_76

    :catch_62
    move-exception v0

    move-object p1, v0

    goto :goto_71

    :goto_65
    if-eqz v2, :cond_70

    :try_start_67
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_70

    :catchall_6b
    move-exception v0

    move-object p2, v0

    :try_start_6d
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_70
    :goto_70
    throw p1
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_71} :catch_62

    :goto_71
    const-string p2, "Exception when querying MMS address table."

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_76
    invoke-static {v3}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7d

    return-object v8

    :cond_7d
    iget-object p0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v3, p0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
