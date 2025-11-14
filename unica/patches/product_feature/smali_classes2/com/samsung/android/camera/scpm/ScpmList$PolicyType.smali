.class public final enum Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

.field public static final enum CAMERA_3RD_PARTY:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

.field public static final enum CAMERA_COMPATIBILITY:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

.field public static final enum HIDDEN_ID_PERMITTED:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    const-string v1, "CAMERA_3RD_PARTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->CAMERA_3RD_PARTY:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    new-instance v1, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    const-string v2, "HIDDEN_ID_PERMITTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->HIDDEN_ID_PERMITTED:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    new-instance v2, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    const-string v3, "CAMERA_COMPATIBILITY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->CAMERA_COMPATIBILITY:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->$VALUES:[Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->$VALUES:[Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    return-object v0
.end method
