.class public final enum Lcom/android/server/wm/DeviceStateController$DeviceState;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/DeviceStateController$DeviceState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/wm/DeviceStateController$DeviceState;

.field public static final enum CONCURRENT:Lcom/android/server/wm/DeviceStateController$DeviceState;

.field public static final enum FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

.field public static final enum HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

.field public static final enum OPEN:Lcom/android/server/wm/DeviceStateController$DeviceState;

.field public static final enum REAR:Lcom/android/server/wm/DeviceStateController$DeviceState;

.field public static final enum UNKNOWN:Lcom/android/server/wm/DeviceStateController$DeviceState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/server/wm/DeviceStateController$DeviceState;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/DeviceStateController$DeviceState;->UNKNOWN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    new-instance v1, Lcom/android/server/wm/DeviceStateController$DeviceState;

    const-string/jumbo v2, "OPEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/wm/DeviceStateController$DeviceState;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    new-instance v2, Lcom/android/server/wm/DeviceStateController$DeviceState;

    const-string v3, "FOLDED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/wm/DeviceStateController$DeviceState;->FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    new-instance v3, Lcom/android/server/wm/DeviceStateController$DeviceState;

    const-string v4, "HALF_FOLDED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    new-instance v4, Lcom/android/server/wm/DeviceStateController$DeviceState;

    const-string/jumbo v5, "REAR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/wm/DeviceStateController$DeviceState;->REAR:Lcom/android/server/wm/DeviceStateController$DeviceState;

    new-instance v5, Lcom/android/server/wm/DeviceStateController$DeviceState;

    const-string v6, "CONCURRENT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/wm/DeviceStateController$DeviceState;->CONCURRENT:Lcom/android/server/wm/DeviceStateController$DeviceState;

    filled-new-array/range {v0 .. v5}, [Lcom/android/server/wm/DeviceStateController$DeviceState;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/DeviceStateController$DeviceState;->$VALUES:[Lcom/android/server/wm/DeviceStateController$DeviceState;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/DeviceStateController$DeviceState;
    .locals 1

    const-class v0, Lcom/android/server/wm/DeviceStateController$DeviceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/DeviceStateController$DeviceState;

    return-object p0
.end method

.method public static values()[Lcom/android/server/wm/DeviceStateController$DeviceState;
    .locals 1

    sget-object v0, Lcom/android/server/wm/DeviceStateController$DeviceState;->$VALUES:[Lcom/android/server/wm/DeviceStateController$DeviceState;

    invoke-virtual {v0}, [Lcom/android/server/wm/DeviceStateController$DeviceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/DeviceStateController$DeviceState;

    return-object v0
.end method
