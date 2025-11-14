.class public final enum Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

.field public static final enum NOTIFICATION_PANEL_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

.field public static final enum NOTIFICATION_PANEL_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    const/16 v1, 0x145

    const-string/jumbo v2, "NOTIFICATION_PANEL_OPEN"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->NOTIFICATION_PANEL_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    new-instance v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    const/16 v2, 0x146

    const-string/jumbo v3, "NOTIFICATION_PANEL_CLOSE"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->NOTIFICATION_PANEL_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    filled-new-array {v0, v1}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;
    .registers 2

    const-class v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;
    .registers 1

    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .registers 1

    iget p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->mId:I

    return p0
.end method
