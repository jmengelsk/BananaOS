.class public final enum Lcom/samsung/android/camera/Logger$ID;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/Logger$ID;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/camera/Logger$ID;

.field public static final enum CAMERA_APPLICATION_EVENT:Lcom/samsung/android/camera/Logger$ID;

.field public static final enum CAMERA_EVENT:Lcom/samsung/android/camera/Logger$ID;

.field public static final enum DATABASE_EVENT:Lcom/samsung/android/camera/Logger$ID;

.field public static final enum FOLD_EVENT:Lcom/samsung/android/camera/Logger$ID;

.field public static final enum POST_PROCESS_EVENT:Lcom/samsung/android/camera/Logger$ID;

.field public static final enum REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

.field public static final enum SHAKE_EVENT_LISTENER:Lcom/samsung/android/camera/Logger$ID;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/samsung/android/camera/Logger$ID;

    const-string v1, "CAMERA_EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/Logger$ID;->CAMERA_EVENT:Lcom/samsung/android/camera/Logger$ID;

    new-instance v1, Lcom/samsung/android/camera/Logger$ID;

    const-string/jumbo v2, "SHAKE_EVENT_LISTENER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/camera/Logger$ID;->SHAKE_EVENT_LISTENER:Lcom/samsung/android/camera/Logger$ID;

    new-instance v2, Lcom/samsung/android/camera/Logger$ID;

    const-string/jumbo v3, "REQUEST_INJECTOR_SERVICE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance v3, Lcom/samsung/android/camera/Logger$ID;

    const-string/jumbo v4, "VISION_SERVER_RECEIVER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/samsung/android/camera/Logger$ID;

    const-string v5, "FOLD_EVENT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/camera/Logger$ID;->FOLD_EVENT:Lcom/samsung/android/camera/Logger$ID;

    new-instance v5, Lcom/samsung/android/camera/Logger$ID;

    const-string/jumbo v6, "POST_PROCESS_EVENT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/camera/Logger$ID;->POST_PROCESS_EVENT:Lcom/samsung/android/camera/Logger$ID;

    new-instance v6, Lcom/samsung/android/camera/Logger$ID;

    const-string v7, "CAMERA_APPLICATION_EVENT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/camera/Logger$ID;->CAMERA_APPLICATION_EVENT:Lcom/samsung/android/camera/Logger$ID;

    new-instance v7, Lcom/samsung/android/camera/Logger$ID;

    const-string v8, "DATABASE_EVENT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/camera/Logger$ID;->DATABASE_EVENT:Lcom/samsung/android/camera/Logger$ID;

    filled-new-array/range {v0 .. v7}, [Lcom/samsung/android/camera/Logger$ID;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/Logger$ID;->$VALUES:[Lcom/samsung/android/camera/Logger$ID;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/Logger$ID;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/Logger$ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/Logger$ID;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/Logger$ID;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->$VALUES:[Lcom/samsung/android/camera/Logger$ID;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/Logger$ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/Logger$ID;

    return-object v0
.end method
