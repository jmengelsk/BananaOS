.class final enum Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

.field public static final enum FAIL:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

.field public static final enum FILE_NOT_FOUND:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

.field public static final enum SUCCESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

.field public static final enum UNKNOWN_ERROR:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    const-string/jumbo v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->SUCCESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    new-instance v1, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    const-string v2, "FAIL"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v3, v2}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->FAIL:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    new-instance v2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    const-string/jumbo v3, "UNKNOWN_ERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v4, v4, v3}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;-><init>(IILjava/lang/String;)V

    sput-object v2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->UNKNOWN_ERROR:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    new-instance v3, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    const-string v4, "FILE_NOT_FOUND"

    const/4 v5, 0x3

    invoke-direct {v3, v5, v5, v4}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;-><init>(IILjava/lang/String;)V

    sput-object v3, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->FILE_NOT_FOUND:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->$VALUES:[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
    .registers 2

    const-class v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
    .registers 1

    sget-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->$VALUES:[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    invoke-virtual {v0}, [Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    return-object v0
.end method
