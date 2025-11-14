.class public final Lcom/android/server/people/data/SmsQueryHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final SMS_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;


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

    sput-object v0, Lcom/android/server/people/data/SmsQueryHelper;->SMS_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

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

    iput-object p1, p0, Lcom/android/server/people/data/SmsQueryHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/people/data/SmsQueryHelper;->mEventConsumer:Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

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
    iput-object p1, p0, Lcom/android/server/people/data/SmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    return-void
.end method
