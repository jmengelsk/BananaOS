.class public final enum Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_ASSISTANT:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_AOD:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_BUBBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_LOCKSCREEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_OTHER:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_PEEK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_SHADE:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .registers 31

    new-instance v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v0, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v0, 0xa4

    const-string/jumbo v3, "NOTIFICATION_CANCEL_CLICK"

    const/4 v4, 0x1

    invoke-direct {v2, v4, v0, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    new-instance v3, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v0, 0xa5

    const-string/jumbo v4, "NOTIFICATION_CANCEL_USER_OTHER"

    const/4 v5, 0x2

    invoke-direct {v3, v5, v0, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    sput-object v3, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_OTHER:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v0, 0xa6

    const-string/jumbo v5, "NOTIFICATION_CANCEL_USER_CANCEL_ALL"

    const/4 v6, 0x3

    invoke-direct {v4, v6, v0, v5}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    new-instance v5, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v0, 0xa7

    const-string/jumbo v6, "NOTIFICATION_CANCEL_ERROR"

    const/4 v7, 0x4

    invoke-direct {v5, v7, v0, v6}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    new-instance v6, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v0, 0xa8

    const-string/jumbo v7, "NOTIFICATION_CANCEL_PACKAGE_CHANGED"

    const/4 v8, 0x5

    invoke-direct {v6, v8, v0, v7}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    new-instance v7, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v0, 0xa9

    const-string/jumbo v8, "NOTIFICATION_CANCEL_USER_STOPPED"

    const/4 v9, 0x6

    invoke-direct {v7, v9, v0, v8}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    new-instance v8, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v0, 0xaa

    const-string/jumbo v9, "NOTIFICATION_CANCEL_PACKAGE_BANNED"

    const/4 v10, 0x7

    invoke-direct {v8, v10, v0, v9}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    new-instance v9, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v0, 0xab

    const-string/jumbo v10, "NOTIFICATION_CANCEL_APP_CANCEL"

    const/16 v11, 0x8

    invoke-direct {v9, v11, v0, v10}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    new-instance v10, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v0, 0xac

    const-string/jumbo v11, "NOTIFICATION_CANCEL_APP_CANCEL_ALL"

    const/16 v12, 0x9

    invoke-direct {v10, v12, v0, v11}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    new-instance v11, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v0, 0xad

    const-string/jumbo v12, "NOTIFICATION_CANCEL_LISTENER_CANCEL"

    const/16 v13, 0xa

    invoke-direct {v11, v13, v0, v12}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    new-instance v12, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v0, 0xae

    const-string/jumbo v13, "NOTIFICATION_CANCEL_LISTENER_CANCEL_ALL"

    const/16 v14, 0xb

    invoke-direct {v12, v14, v0, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    new-instance v13, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v0, 0xaf

    const-string/jumbo v14, "NOTIFICATION_CANCEL_GROUP_SUMMARY_CANCELED"

    const/16 v15, 0xc

    invoke-direct {v13, v15, v0, v14}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    new-instance v14, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v0, 0xb0

    const-string/jumbo v15, "NOTIFICATION_CANCEL_GROUP_OPTIMIZATION"

    move-object/from16 v16, v1

    const/16 v1, 0xd

    invoke-direct {v14, v1, v0, v15}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    new-instance v15, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v0, 0xb1

    const-string/jumbo v1, "NOTIFICATION_CANCEL_PACKAGE_SUSPENDED"

    move-object/from16 v17, v2

    const/16 v2, 0xe

    invoke-direct {v15, v2, v0, v1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v1, 0xb2

    const-string/jumbo v2, "NOTIFICATION_CANCEL_PROFILE_TURNED_OFF"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    new-instance v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v2, 0xb3

    const-string/jumbo v3, "NOTIFICATION_CANCEL_UNAUTOBUNDLED"

    move-object/from16 v19, v0

    const/16 v0, 0x10

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v2, 0xb4

    const-string/jumbo v3, "NOTIFICATION_CANCEL_CHANNEL_BANNED"

    move-object/from16 v20, v1

    const/16 v1, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    new-instance v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v2, 0xb5

    const-string/jumbo v3, "NOTIFICATION_CANCEL_SNOOZED"

    move-object/from16 v21, v0

    const/16 v0, 0x12

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v2, 0xb6

    const-string/jumbo v3, "NOTIFICATION_CANCEL_TIMEOUT"

    move-object/from16 v22, v1

    const/16 v1, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    new-instance v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v2, 0x4ed

    const-string/jumbo v3, "NOTIFICATION_CANCEL_CHANNEL_REMOVED"

    move-object/from16 v23, v0

    const/16 v0, 0x14

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v2, 0x4ee

    const-string/jumbo v3, "NOTIFICATION_CANCEL_CLEAR_DATA"

    move-object/from16 v24, v1

    const/16 v1, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    new-instance v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v2, 0xbe

    const-string/jumbo v3, "NOTIFICATION_CANCEL_USER_PEEK"

    move-object/from16 v25, v0

    const/16 v0, 0x16

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_PEEK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v2, 0xbf

    const-string/jumbo v3, "NOTIFICATION_CANCEL_USER_AOD"

    move-object/from16 v26, v1

    const/16 v1, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_AOD:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    new-instance v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v2, 0x4cc

    const-string/jumbo v3, "NOTIFICATION_CANCEL_USER_BUBBLE"

    move-object/from16 v27, v0

    const/16 v0, 0x18

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_BUBBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v2, 0xc1

    const-string/jumbo v3, "NOTIFICATION_CANCEL_USER_LOCKSCREEN"

    move-object/from16 v28, v1

    const/16 v1, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_LOCKSCREEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    new-instance v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v2, 0xc0

    const-string/jumbo v3, "NOTIFICATION_CANCEL_USER_SHADE"

    move-object/from16 v29, v0

    const/16 v0, 0x1a

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_SHADE:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v2, 0x38a

    const-string/jumbo v3, "NOTIFICATION_CANCEL_ASSISTANT"

    move-object/from16 v30, v1

    const/16 v1, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_ASSISTANT:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move-object/from16 v19, v22

    move-object/from16 v20, v23

    move-object/from16 v21, v24

    move-object/from16 v22, v25

    move-object/from16 v23, v26

    move-object/from16 v24, v27

    move-object/from16 v25, v28

    move-object/from16 v26, v29

    move-object/from16 v27, v30

    move-object/from16 v28, v0

    filled-new-array/range {v1 .. v28}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;
    .registers 2

    const-class v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;
    .registers 1

    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .registers 1

    iget p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->mId:I

    return p0
.end method
