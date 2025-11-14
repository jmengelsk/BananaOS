.class public Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAffinity:F

.field public final mExpireMillis:J

.field public mHasPhone:Z

.field public mPhoneLookupKey:Ljava/lang/String;

.field public final mPhoneNumbers:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mHasPhone:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneLookupKey:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneNumbers:Landroid/util/ArraySet;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mExpireMillis:J

    return-void
.end method


# virtual methods
.method public final getAffinity()F
    .registers 3

    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_11

    :cond_e
    iget p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    return p0

    :cond_11
    :goto_11
    return v1
.end method

.method public isExpired()Z
    .registers 5

    iget-wide v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mExpireMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final mergeContact(Landroid/database/Cursor;)V
    .registers 8

    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/high16 v1, 0x3f000000  # 0.5f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "ValidateNoPeople"

    if-ltz v0, :cond_25

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget-boolean v2, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v2, :cond_2b

    const-string/jumbo v2, "contact _ID is: "

    invoke-static {v0, v2, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_25
    const-string/jumbo v0, "invalid cursor: no _ID"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_2b
    const-string/jumbo v0, "lookup"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneLookupKey:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v0, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "contact LOOKUP_KEY is: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneLookupKey:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    :cond_4c
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v0, :cond_56

    const-string/jumbo v0, "invalid cursor: no LOOKUP_KEY"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    :goto_56
    const-string/jumbo v0, "starred"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_81

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_69

    move v0, v3

    goto :goto_6a

    :cond_69
    move v0, v2

    :goto_6a
    if-eqz v0, :cond_76

    iget v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    :cond_76
    sget-boolean v4, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v4, :cond_8b

    const-string/jumbo v4, "contact STARRED is: "

    invoke-static {v4, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_8b

    :cond_81
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v0, :cond_8b

    const-string/jumbo v0, "invalid cursor: no STARRED"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    :goto_8b
    const-string/jumbo v0, "has_phone_number"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_af

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-eqz p1, :cond_9b

    move v2, v3

    :cond_9b
    iput-boolean v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mHasPhone:Z

    sget-boolean p1, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz p1, :cond_b9

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "contact HAS_PHONE_NUMBER is: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mHasPhone:Z

    invoke-static {v1, p1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void

    :cond_af
    sget-boolean p0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz p0, :cond_b9

    const-string/jumbo p0, "invalid cursor: no HAS_PHONE_NUMBER"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b9
    return-void
.end method

.method public final mergePhoneNumber(Landroid/database/Cursor;)V
    .registers 5

    const-string/jumbo v0, "data4"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "ValidateNoPeople"

    if-ltz v0, :cond_16

    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneNumbers:Landroid/util/ArraySet;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_16
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string/jumbo v0, "cursor data not found: no NORMALIZED_NUMBER"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_20
    const-string/jumbo v0, "data1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_33

    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneNumbers:Landroid/util/ArraySet;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_33
    sget-boolean p0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz p0, :cond_3d

    const-string/jumbo p0, "cursor data not found: no NUMBER"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-void
.end method
