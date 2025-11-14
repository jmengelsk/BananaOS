.class final enum Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

.field public static final enum REMOTE:Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    const-string/jumbo v1, "REMOTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;->REMOTE:Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    filled-new-array {v0}, [Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    move-result-object v0

    sput-object v0, Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;->$VALUES:[Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;
    .locals 1

    const-class v0, Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    return-object p0
.end method

.method public static values()[Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;
    .locals 1

    sget-object v0, Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;->$VALUES:[Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    invoke-virtual {v0}, [Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    return-object v0
.end method
