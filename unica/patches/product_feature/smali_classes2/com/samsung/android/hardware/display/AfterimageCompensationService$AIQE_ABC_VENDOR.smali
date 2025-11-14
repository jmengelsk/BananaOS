.class final enum Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

.field public static final enum LSI:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

.field public static final enum NONE:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

.field public static final enum QC:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    const-string/jumbo v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;->NONE:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    new-instance v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    const-string/jumbo v2, "QC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;->QC:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    new-instance v2, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    const-string v3, "LSI"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;->LSI:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;->$VALUES:[Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;
    .locals 1

    const-class v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;
    .locals 1

    sget-object v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;->$VALUES:[Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    invoke-virtual {v0}, [Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    return-object v0
.end method
