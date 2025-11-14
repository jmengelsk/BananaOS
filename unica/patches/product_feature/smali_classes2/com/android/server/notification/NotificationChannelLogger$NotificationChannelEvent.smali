.class public final enum Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum APP_NOTIFICATIONS_BLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum APP_NOTIFICATIONS_UNBLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_CONVERSATION_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_CONVERSATION_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_GROUP_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_GROUP_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_UPDATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_UPDATED_BY_USER:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const/16 v1, 0xdb

    const-string/jumbo v2, "NOTIFICATION_CHANNEL_CREATED"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    new-instance v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const/16 v2, 0xdc

    const-string/jumbo v3, "NOTIFICATION_CHANNEL_UPDATED"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_UPDATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    new-instance v2, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const/16 v3, 0xdd

    const-string/jumbo v4, "NOTIFICATION_CHANNEL_UPDATED_BY_USER"

    const/4 v5, 0x2

    invoke-direct {v2, v5, v3, v4}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    sput-object v2, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_UPDATED_BY_USER:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    new-instance v3, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const/16 v4, 0xde

    const-string/jumbo v5, "NOTIFICATION_CHANNEL_DELETED"

    const/4 v6, 0x3

    invoke-direct {v3, v6, v4, v5}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    sput-object v3, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    new-instance v4, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const/16 v5, 0xdf

    const-string/jumbo v6, "NOTIFICATION_CHANNEL_GROUP_CREATED"

    const/4 v7, 0x4

    invoke-direct {v4, v7, v5, v6}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    sput-object v4, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_GROUP_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    new-instance v5, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const/16 v6, 0xe0

    const-string/jumbo v7, "NOTIFICATION_CHANNEL_GROUP_UPDATED"

    const/4 v8, 0x5

    invoke-direct {v5, v8, v6, v7}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    new-instance v6, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const/16 v7, 0xe2

    const-string/jumbo v8, "NOTIFICATION_CHANNEL_GROUP_DELETED"

    const/4 v9, 0x6

    invoke-direct {v6, v9, v7, v8}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    sput-object v6, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_GROUP_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    new-instance v7, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const/16 v8, 0x110

    const-string/jumbo v9, "NOTIFICATION_CHANNEL_CONVERSATION_CREATED"

    const/4 v10, 0x7

    invoke-direct {v7, v10, v8, v9}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    sput-object v7, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CONVERSATION_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    new-instance v8, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const/16 v9, 0x112

    const-string/jumbo v10, "NOTIFICATION_CHANNEL_CONVERSATION_DELETED"

    const/16 v11, 0x8

    invoke-direct {v8, v11, v9, v10}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    sput-object v8, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CONVERSATION_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    new-instance v9, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const/16 v10, 0x22d

    const-string v11, "APP_NOTIFICATIONS_BLOCKED"

    const/16 v12, 0x9

    invoke-direct {v9, v12, v10, v11}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    sput-object v9, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->APP_NOTIFICATIONS_BLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    new-instance v10, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const/16 v11, 0x22e

    const-string v12, "APP_NOTIFICATIONS_UNBLOCKED"

    const/16 v13, 0xa

    invoke-direct {v10, v13, v11, v12}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(IILjava/lang/String;)V

    sput-object v10, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->APP_NOTIFICATIONS_UNBLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    filled-new-array/range {v0 .. v10}, [Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->$VALUES:[Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .locals 1

    const-class v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .locals 1

    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->$VALUES:[Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->mId:I

    return p0
.end method
