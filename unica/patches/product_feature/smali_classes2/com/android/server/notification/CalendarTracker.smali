.class public final Lcom/android/server/notification/CalendarTracker;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final ATTENDEE_PROJECTION:[Ljava/lang/String;

.field public static final DEBUG:Z

.field public static final INSTANCE_PROJECTION:[Ljava/lang/String;


# instance fields
.field public mCallback:Lcom/android/server/notification/EventConditionProvider$2;

.field public final mObserver:Lcom/android/server/notification/CalendarTracker$1;

.field public mRegistered:Z

.field public final mSystemContext:Landroid/content/Context;

.field public final mUserContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "ConditionProviders"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    const-string/jumbo v8, "calendar_id"

    const-string/jumbo v9, "availability"

    const-string/jumbo v1, "begin"

    const-string/jumbo v2, "end"

    const-string/jumbo v3, "title"

    const-string/jumbo v4, "visible"

    const-string/jumbo v5, "event_id"

    const-string/jumbo v6, "calendar_displayName"

    const-string/jumbo v7, "ownerAccount"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v0, "attendeeEmail"

    const-string/jumbo v1, "attendeeStatus"

    const-string/jumbo v2, "event_id"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/notification/CalendarTracker$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/CalendarTracker$1;-><init>(Lcom/android/server/notification/CalendarTracker;)V

    iput-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Lcom/android/server/notification/CalendarTracker$1;

    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-string v4, "ConditionProviders.CT"

    sget-object v5, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const-wide/32 v6, 0x5265c00

    add-long/2addr v6, v2

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    new-instance v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-wide v6, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, v0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v10, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v13, "begin ASC"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/notification/CalendarTracker;->getCalendarsWithAccess()Landroid/util/ArraySet;

    move-result-object v7

    :goto_0
    if-eqz v6, :cond_10

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_10

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v14, 0x2

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v14, 0x3

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-ne v14, v11, :cond_0

    move v14, v11

    goto :goto_1

    :cond_0
    move v14, v8

    :goto_1
    const/4 v8, 0x4

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v11, 0x5

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/4 v11, 0x6

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/4 v11, 0x7

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    const/16 v11, 0x8

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-boolean v3, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v3, :cond_4

    move/from16 v28, v2

    const-string/jumbo v2, "title=%s time=%s-%s vis=%s availability=%s eventId=%s name=%s owner=%s calId=%s canAccessCal=%s"

    move/from16 v29, v3

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v16, v3

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v11, :cond_3

    move-object/from16 v17, v3

    const/4 v3, 0x1

    if-eq v11, v3, :cond_2

    const/4 v3, 0x2

    if-eq v11, v3, :cond_1

    :try_start_2
    const-string v3, "AVAILABILITY_UNKNOWN_"

    invoke-static {v11, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object/from16 v19, v3

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_5

    :cond_1
    const-string v3, "AVAILABILITY_TENTATIVE"

    goto :goto_2

    :cond_2
    const-string v3, "AVAILABILITY_FREE"

    goto :goto_2

    :cond_3
    move-object/from16 v17, v3

    const-string v3, "AVAILABILITY_BUSY"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_3
    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    filled-new-array/range {v15 .. v24}, [Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v16, v6

    move-object/from16 v15, v21

    move-object/from16 v6, v22

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_1
    move-exception v0

    :goto_4
    move-object/from16 v6, v16

    goto/16 :goto_d

    :catch_1
    move-exception v0

    :goto_5
    move-object/from16 v6, v16

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    move-object/from16 v16, v6

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move-object/from16 v16, v6

    goto/16 :goto_c

    :cond_4
    move/from16 v28, v2

    move/from16 v29, v3

    move-object/from16 v16, v6

    move-object/from16 v15, v21

    move-object/from16 v6, v22

    :goto_6
    cmp-long v2, p2, v9

    if-ltz v2, :cond_5

    cmp-long v2, p2, v12

    if-gez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_7

    :cond_5
    const/4 v2, 0x0

    :goto_7
    if-eqz v14, :cond_8

    if-eqz v28, :cond_8

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    invoke-static {v3, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    const/4 v14, 0x1

    :goto_8
    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v14, 0x0

    goto :goto_8

    :goto_9
    if-eq v11, v3, :cond_9

    const/16 v25, 0x1

    goto :goto_a

    :cond_9
    const/16 v25, 0x0

    :goto_a
    if-eqz v14, :cond_f

    if-eqz v25, :cond_f

    if-eqz v29, :cond_a

    const-string v3, "  MEETS CALENDAR & AVAILABILITY"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v0, v1, v8, v6}, Lcom/android/server/notification/CalendarTracker;->meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v29, :cond_b

    const-string v3, "    MEETS ATTENDEE"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz v2, :cond_d

    if-eqz v29, :cond_c

    const-string v2, "      MEETS TIME"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v3, 0x1

    iput-boolean v3, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    :cond_d
    cmp-long v2, v9, p2

    if-lez v2, :cond_e

    iget-wide v2, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v2, v9, v2

    if-gez v2, :cond_e

    iput-wide v9, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    goto :goto_b

    :cond_e
    cmp-long v2, v12, p2

    if-lez v2, :cond_f

    iget-wide v2, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v2, v12, v2

    if-gez v2, :cond_f

    iput-wide v12, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_f
    :goto_b
    move-wide/from16 v2, p2

    move-object/from16 v6, v16

    goto/16 :goto_0

    :cond_10
    move-object/from16 v16, v6

    if-eqz v16, :cond_11

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    return-object v5

    :catchall_3
    move-exception v0

    goto :goto_d

    :catch_3
    move-exception v0

    :goto_c
    :try_start_5
    const-string/jumbo v1, "error reading calendar"

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v6, :cond_11

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_11
    return-object v5

    :goto_d
    if-eqz v6, :cond_12

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v0
.end method

.method public final getCalendarsWithAccess()Landroid/util/ArraySet;
    .locals 12

    const-string v1, "ConditionProviders.CT"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v8, "calendar_access_level >= 500 AND sync_events = 1"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    :goto_0
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {v11, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    if-eqz v11, :cond_1

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    :try_start_1
    const-string/jumbo v0, "error querying calendar content provider"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    :goto_3
    sget-boolean p0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "getCalendarsWithAccess took "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v4

    :goto_4
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0
.end method

.method public getUserId()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    return p0
.end method

.method public final meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z
    .locals 20

    move-object/from16 v0, p3

    const-string/jumbo v1, "meetsAttendee took "

    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    const-string v3, "ConditionProviders.CT"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v9, "event_id = ? AND attendeeEmail = ?"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p0

    :try_start_0
    iget-object v6, v6, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    const/4 v6, 0x1

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move/from16 v17, v2

    move-wide/from16 v18, v4

    move/from16 p0, v6

    move/from16 v16, v12

    goto/16 :goto_9

    :cond_1
    move v7, v12

    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-interface {v13, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v14
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v15, p1

    move/from16 v16, v12

    :try_start_1
    iget v12, v15, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    if-eqz v12, :cond_6

    if-eq v12, v6, :cond_5

    if-eq v12, v11, :cond_3

    :cond_2
    move/from16 v11, v16

    goto :goto_2

    :cond_3
    if-ne v14, v6, :cond_2

    :cond_4
    :goto_1
    move v11, v6

    goto :goto_2

    :cond_5
    if-eq v14, v6, :cond_4

    const/4 v11, 0x4

    if-ne v14, v11, :cond_2

    goto :goto_1

    :cond_6
    if-eq v14, v11, :cond_2

    goto :goto_1

    :goto_2
    if-eqz v2, :cond_c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p0, v6

    const-string v6, ""

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v14, :cond_b

    const/4 v6, 0x1

    if-eq v14, v6, :cond_a

    const/4 v6, 0x2

    if-eq v14, v6, :cond_9

    const/4 v6, 0x3

    if-eq v14, v6, :cond_8

    const/4 v6, 0x4

    if-eq v14, v6, :cond_7

    const-string v6, "ATTENDEE_STATUS_UNKNOWN_"

    invoke-static {v14, v6}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_7
    const-string v6, "ATTENDEE_STATUS_TENTATIVE"

    goto :goto_3

    :cond_8
    const-string v6, "ATTENDEE_STATUS_INVITED"

    goto :goto_3

    :cond_9
    const-string v6, "ATTENDEE_STATUS_DECLINED"

    goto :goto_3

    :cond_a
    const-string v6, "ATTENDEE_STATUS_ACCEPTED"

    goto :goto_3

    :cond_b
    const-string v6, "ATTENDEE_STATUS_NONE"

    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v17, v2

    :try_start_2
    const-string/jumbo v2, "status="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", meetsReply="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    move/from16 v2, p2

    move-wide/from16 v18, v4

    goto :goto_7

    :catchall_0
    move-exception v0

    :goto_5
    move-wide/from16 v18, v4

    goto/16 :goto_b

    :catch_0
    move-exception v0

    :goto_6
    move-wide/from16 v18, v4

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    move/from16 v17, v2

    goto :goto_5

    :catch_1
    move-exception v0

    move/from16 v17, v2

    goto :goto_6

    :cond_c
    move/from16 v17, v2

    move/from16 p0, v6

    goto :goto_4

    :goto_7
    int-to-long v4, v2

    cmp-long v4, v8, v4

    if-nez v4, :cond_d

    :try_start_3
    invoke-static {v10, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_d

    if-eqz v11, :cond_d

    move/from16 v4, p0

    goto :goto_8

    :catchall_2
    move-exception v0

    goto/16 :goto_b

    :catch_2
    move-exception v0

    goto :goto_a

    :cond_d
    move/from16 v4, v16

    :goto_8
    or-int/2addr v7, v4

    move/from16 v6, p0

    move/from16 v12, v16

    move/from16 v2, v17

    move-wide/from16 v4, v18

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move/from16 v17, v2

    move-wide/from16 v18, v4

    move/from16 v16, v12

    goto :goto_a

    :cond_e
    move/from16 v17, v2

    move-wide/from16 v18, v4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    if-eqz v17, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v7

    :goto_9
    if-eqz v17, :cond_10

    :try_start_4
    const-string/jumbo v0, "No attendees found"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_10
    if-eqz v13, :cond_11

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v17, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return p0

    :goto_a
    :try_start_5
    const-string/jumbo v2, "error querying attendees content provider"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v13, :cond_13

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_13
    if-eqz v17, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return v16

    :goto_b
    if-eqz v13, :cond_15

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_15
    if-eqz v17, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v18

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    throw v0
.end method

.method public final setCallback(Lcom/android/server/notification/EventConditionProvider$2;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/EventConditionProvider$2;

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/EventConditionProvider$2;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    iget-object v4, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Lcom/android/server/notification/CalendarTracker$1;

    sget-boolean v5, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    const-string v6, "ConditionProviders.CT"

    if-eqz v3, :cond_4

    if-eqz v5, :cond_3

    const-string/jumbo v3, "unregister content observer u="

    invoke-static {v2, v3, v6}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_4
    iput-boolean p1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-eqz v5, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mRegistered = "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " u="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-boolean p0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-eqz p0, :cond_7

    if-eqz v5, :cond_6

    const-string/jumbo p0, "register content observer u="

    invoke-static {v2, p0, v6}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-object p0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p0, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-object p0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p0, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-object p0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p0, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_7
    :goto_1
    return-void
.end method
