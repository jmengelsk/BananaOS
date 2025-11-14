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
    .registers 10

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
    .registers 4

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
    .registers 34

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

    :try_start_24
    iget-object v7, v0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v10, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v13, "begin ASC"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_35} :catch_17d
    .catchall {:try_start_24 .. :try_end_35} :catchall_17b

    :try_start_35
    invoke-virtual {v0}, Lcom/android/server/notification/CalendarTracker;->getCalendarsWithAccess()Landroid/util/ArraySet;

    move-result-object v7

    :goto_39
    if-eqz v6, :cond_173

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_173

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

    if-ne v14, v11, :cond_59

    move v14, v11

    goto :goto_5a

    :cond_59
    move v14, v8

    :goto_5a
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

    if-eqz v3, :cond_ef

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
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_97} :catch_ea
    .catchall {:try_start_35 .. :try_end_97} :catchall_e5

    if-eqz v11, :cond_b8

    move-object/from16 v17, v3

    const/4 v3, 0x1

    if-eq v11, v3, :cond_b5

    const/4 v3, 0x2

    if-eq v11, v3, :cond_b2

    :try_start_a1
    const-string v3, "AVAILABILITY_UNKNOWN_"

    invoke-static {v11, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_a7
    move-object/from16 v19, v3

    goto :goto_bd

    :catchall_aa
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_dc

    :catch_ae
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_e1

    :cond_b2
    const-string v3, "AVAILABILITY_TENTATIVE"

    goto :goto_a7

    :cond_b5
    const-string v3, "AVAILABILITY_FREE"

    goto :goto_a7

    :cond_b8
    move-object/from16 v17, v3

    const-string v3, "AVAILABILITY_BUSY"
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_bc} :catch_ae
    .catchall {:try_start_a1 .. :try_end_bc} :catchall_aa

    goto :goto_a7

    :goto_bd
    :try_start_bd
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    filled-new-array/range {v15 .. v24}, [Ljava/lang/Object;

    move-result-object v3
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_cd} :catch_ea
    .catchall {:try_start_bd .. :try_end_cd} :catchall_e5

    move-object/from16 v16, v6

    move-object/from16 v15, v21

    move-object/from16 v6, v22

    :try_start_d3
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f9

    :catchall_db
    move-exception v0

    :goto_dc
    move-object/from16 v6, v16

    goto/16 :goto_18a

    :catch_e0
    move-exception v0

    :goto_e1
    move-object/from16 v6, v16

    goto/16 :goto_17e

    :catchall_e5
    move-exception v0

    move-object/from16 v16, v6

    goto/16 :goto_18a

    :catch_ea
    move-exception v0

    move-object/from16 v16, v6

    goto/16 :goto_17e

    :cond_ef
    move/from16 v28, v2

    move/from16 v29, v3

    move-object/from16 v16, v6

    move-object/from16 v15, v21

    move-object/from16 v6, v22

    :goto_f9
    cmp-long v2, p2, v9

    if-ltz v2, :cond_103

    cmp-long v2, p2, v12

    if-gez v2, :cond_103

    const/4 v2, 0x1

    goto :goto_104

    :cond_103
    const/4 v2, 0x0

    :goto_104
    if-eqz v14, :cond_127

    if-eqz v28, :cond_127

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    if-nez v3, :cond_110

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    if-eqz v3, :cond_124

    :cond_110
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    invoke-static {v3, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_127

    :cond_124
    const/4 v14, 0x1

    :goto_125
    const/4 v3, 0x1

    goto :goto_129

    :cond_127
    const/4 v14, 0x0

    goto :goto_125

    :goto_129
    if-eq v11, v3, :cond_12e

    const/16 v25, 0x1

    goto :goto_130

    :cond_12e
    const/16 v25, 0x0

    :goto_130
    if-eqz v14, :cond_16d

    if-eqz v25, :cond_16d

    if-eqz v29, :cond_13b

    const-string v3, "  MEETS CALENDAR & AVAILABILITY"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13b
    invoke-virtual {v0, v1, v8, v6}, Lcom/android/server/notification/CalendarTracker;->meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16d

    if-eqz v29, :cond_148

    const-string v3, "    MEETS ATTENDEE"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_148
    if-eqz v2, :cond_154

    if-eqz v29, :cond_151

    const-string v2, "      MEETS TIME"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_151
    const/4 v3, 0x1

    iput-boolean v3, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    :cond_154
    cmp-long v2, v9, p2

    if-lez v2, :cond_161

    iget-wide v2, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v2, v9, v2

    if-gez v2, :cond_161

    iput-wide v9, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    goto :goto_16d

    :cond_161
    cmp-long v2, v12, p2

    if-lez v2, :cond_16d

    iget-wide v2, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v2, v12, v2

    if-gez v2, :cond_16d

    iput-wide v12, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_16d} :catch_e0
    .catchall {:try_start_d3 .. :try_end_16d} :catchall_db

    :cond_16d
    :goto_16d
    move-wide/from16 v2, p2

    move-object/from16 v6, v16

    goto/16 :goto_39

    :cond_173
    move-object/from16 v16, v6

    if-eqz v16, :cond_189

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    return-object v5

    :catchall_17b
    move-exception v0

    goto :goto_18a

    :catch_17d
    move-exception v0

    :goto_17e
    :try_start_17e
    const-string/jumbo v1, "error reading calendar"

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_184
    .catchall {:try_start_17e .. :try_end_184} :catchall_17b

    if-eqz v6, :cond_189

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_189
    return-object v5

    :goto_18a
    if-eqz v6, :cond_18f

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_18f
    throw v0
.end method

.method public final getCalendarsWithAccess()Landroid/util/ArraySet;
    .registers 13

    const-string v1, "ConditionProviders.CT"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    :try_start_13
    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v8, "calendar_access_level >= 500 AND sync_events = 1"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    :goto_24
    if-eqz v11, :cond_3f

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_3f

    const/4 p0, 0x0

    invoke-interface {v11, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_38} :catch_3c
    .catchall {:try_start_13 .. :try_end_38} :catchall_39

    goto :goto_24

    :catchall_39
    move-exception v0

    move-object p0, v0

    goto :goto_6a

    :catch_3c
    move-exception v0

    move-object p0, v0

    goto :goto_45

    :cond_3f
    if-eqz v11, :cond_4e

    :goto_41
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_4e

    :goto_45
    :try_start_45
    const-string/jumbo v0, "error querying calendar content provider"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_39

    if-eqz v11, :cond_4e

    goto :goto_41

    :cond_4e
    :goto_4e
    sget-boolean p0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz p0, :cond_69

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

    :cond_69
    return-object v4

    :goto_6a
    if-eqz v11, :cond_6f

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6f
    throw p0
.end method

.method public getUserId()I
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    return p0
.end method

.method public final meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z
    .registers 24

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

    :try_start_1c
    iget-object v6, v6, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    const/4 v6, 0x1

    if-eqz v13, :cond_34

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_3e

    :cond_34
    move/from16 v17, v2

    move-wide/from16 v18, v4

    move/from16 p0, v6

    move/from16 v16, v12

    goto/16 :goto_12a

    :cond_3e
    move v7, v12

    :goto_3f
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_10b

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-interface {v13, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v14
    :try_end_52
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_52} :catch_103
    .catchall {:try_start_1c .. :try_end_52} :catchall_d4

    move-object/from16 v15, p1

    move/from16 v16, v12

    :try_start_56
    iget v12, v15, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    if-eqz v12, :cond_6b

    if-eq v12, v6, :cond_65

    if-eq v12, v11, :cond_61

    :cond_5e
    move/from16 v11, v16

    goto :goto_6e

    :cond_61
    if-ne v14, v6, :cond_5e

    :cond_63
    :goto_63
    move v11, v6

    goto :goto_6e

    :cond_65
    if-eq v14, v6, :cond_63

    const/4 v11, 0x4

    if-ne v14, v11, :cond_5e

    goto :goto_63

    :cond_6b
    if-eq v14, v11, :cond_5e

    goto :goto_63

    :goto_6e
    if-eqz v2, :cond_dc

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p0, v6

    const-string v6, ""

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v14, :cond_9d

    const/4 v6, 0x1

    if-eq v14, v6, :cond_9a

    const/4 v6, 0x2

    if-eq v14, v6, :cond_97

    const/4 v6, 0x3

    if-eq v14, v6, :cond_94

    const/4 v6, 0x4

    if-eq v14, v6, :cond_91

    const-string v6, "ATTENDEE_STATUS_UNKNOWN_"

    invoke-static {v14, v6}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_9f

    :cond_91
    const-string v6, "ATTENDEE_STATUS_TENTATIVE"

    goto :goto_9f

    :cond_94
    const-string v6, "ATTENDEE_STATUS_INVITED"

    goto :goto_9f

    :cond_97
    const-string v6, "ATTENDEE_STATUS_DECLINED"

    goto :goto_9f

    :cond_9a
    const-string v6, "ATTENDEE_STATUS_ACCEPTED"

    goto :goto_9f

    :cond_9d
    const-string v6, "ATTENDEE_STATUS_NONE"

    :goto_9f
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_a4} :catch_d8
    .catchall {:try_start_56 .. :try_end_a4} :catchall_d4

    move/from16 v17, v2

    :try_start_a6
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
    :try_end_c5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a6 .. :try_end_c5} :catch_cf
    .catchall {:try_start_a6 .. :try_end_c5} :catchall_ca

    :goto_c5
    move/from16 v2, p2

    move-wide/from16 v18, v4

    goto :goto_e1

    :catchall_ca
    move-exception v0

    :goto_cb
    move-wide/from16 v18, v4

    goto/16 :goto_172

    :catch_cf
    move-exception v0

    :goto_d0
    move-wide/from16 v18, v4

    goto/16 :goto_14f

    :catchall_d4
    move-exception v0

    move/from16 v17, v2

    goto :goto_cb

    :catch_d8
    move-exception v0

    move/from16 v17, v2

    goto :goto_d0

    :cond_dc
    move/from16 v17, v2

    move/from16 p0, v6

    goto :goto_c5

    :goto_e1
    int-to-long v4, v2

    cmp-long v4, v8, v4

    if-nez v4, :cond_f6

    :try_start_e6
    invoke-static {v10, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_ea
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e6 .. :try_end_ea} :catch_f4
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_f1

    if-eqz v4, :cond_f6

    if-eqz v11, :cond_f6

    move/from16 v4, p0

    goto :goto_f8

    :catchall_f1
    move-exception v0

    goto/16 :goto_172

    :catch_f4
    move-exception v0

    goto :goto_14f

    :cond_f6
    move/from16 v4, v16

    :goto_f8
    or-int/2addr v7, v4

    move/from16 v6, p0

    move/from16 v12, v16

    move/from16 v2, v17

    move-wide/from16 v4, v18

    goto/16 :goto_3f

    :catch_103
    move-exception v0

    move/from16 v17, v2

    move-wide/from16 v18, v4

    move/from16 v16, v12

    goto :goto_14f

    :cond_10b
    move/from16 v17, v2

    move-wide/from16 v18, v4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    if-eqz v17, :cond_129

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_129
    return v7

    :goto_12a
    if-eqz v17, :cond_132

    :try_start_12c
    const-string/jumbo v0, "No attendees found"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_132
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12c .. :try_end_132} :catch_f4
    .catchall {:try_start_12c .. :try_end_132} :catchall_f1

    :cond_132
    if-eqz v13, :cond_137

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_137
    if-eqz v17, :cond_14e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14e
    return p0

    :goto_14f
    :try_start_14f
    const-string/jumbo v2, "error querying attendees content provider"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_155
    .catchall {:try_start_14f .. :try_end_155} :catchall_f1

    if-eqz v13, :cond_15a

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_15a
    if-eqz v17, :cond_171

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_171
    return v16

    :goto_172
    if-eqz v13, :cond_177

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_177
    if-eqz v17, :cond_18e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v18

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18e
    throw v0
.end method

.method public final setCallback(Lcom/android/server/notification/EventConditionProvider$2;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/EventConditionProvider$2;

    if-ne v0, p1, :cond_5

    goto :goto_6c

    :cond_5
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/EventConditionProvider$2;

    const/4 v0, 0x1

    if-eqz p1, :cond_c

    move p1, v0

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iget-boolean v1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-ne v1, p1, :cond_12

    goto :goto_6c

    :cond_12
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

    if-eqz v3, :cond_33

    if-eqz v5, :cond_30

    const-string/jumbo v3, "unregister content observer u="

    invoke-static {v2, v3, v6}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_30
    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_33
    iput-boolean p1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-eqz v5, :cond_51

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

    :cond_51
    iget-boolean p0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-eqz p0, :cond_6c

    if-eqz v5, :cond_5d

    const-string/jumbo p0, "register content observer u="

    invoke-static {v2, p0, v6}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5d
    sget-object p0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p0, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-object p0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p0, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-object p0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p0, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_6c
    :goto_6c
    return-void
.end method
