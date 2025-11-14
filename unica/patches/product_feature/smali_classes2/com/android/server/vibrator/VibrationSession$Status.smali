.class public final enum Lcom/android/server/vibrator/VibrationSession$Status;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/vibrator/VibrationSession$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum CANCELLED_BY_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum CANCELLED_BY_DISABLED_NOTIFICATION:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum CANCELLED_BY_FOREGROUND_USER:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum CANCELLED_BY_SCREEN_OFF:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum CANCELLED_BY_SETTINGS_UPDATE:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum CANCELLED_BY_UNKNOWN_REASON:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum CANCELLED_BY_USER:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum CANCELLED_SERVICE_RECOVERED:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum FINISHED:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum FINISHED_UNEXPECTED:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_BACKGROUND:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_ERROR_CANCELLING:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_FOR_HIGHER_IMPORTANCE:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_FOR_POWER:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_FOR_RINGER_MODE:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_MISSING_PERMISSION:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_ON_WIRELESS_CHARGER:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum RUNNING:Lcom/android/server/vibrator/VibrationSession$Status;


# instance fields
.field private final mProtoEnumValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 37

    new-instance v1, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string/jumbo v0, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    new-instance v2, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string/jumbo v0, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v2, v3, v3, v0}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v2, Lcom/android/server/vibrator/VibrationSession$Status;->RUNNING:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v3, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v0, "FINISHED"

    const/4 v4, 0x2

    invoke-direct {v3, v4, v4, v0}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v3, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v4, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v0, "FINISHED_UNEXPECTED"

    const/4 v5, 0x3

    invoke-direct {v4, v5, v5, v0}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v4, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED_UNEXPECTED:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v5, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v0, "FORWARDED_TO_INPUT_DEVICES"

    const/4 v6, 0x4

    invoke-direct {v5, v6, v6, v0}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v5, Lcom/android/server/vibrator/VibrationSession$Status;->FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v6, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v0, "CANCELLED_BINDER_DIED"

    const/4 v7, 0x5

    invoke-direct {v6, v7, v7, v0}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v6, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v7, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v0, "CANCELLED_BY_SCREEN_OFF"

    const/4 v8, 0x6

    invoke-direct {v7, v8, v8, v0}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v7, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_SCREEN_OFF:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v8, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v0, "CANCELLED_BY_SETTINGS_UPDATE"

    const/4 v9, 0x7

    invoke-direct {v8, v9, v9, v0}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v8, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_SETTINGS_UPDATE:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v9, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v0, "CANCELLED_BY_USER"

    const/16 v10, 0x8

    invoke-direct {v9, v10, v10, v0}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v9, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v10, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v0, "CANCELLED_BY_FOREGROUND_USER"

    const/16 v11, 0x9

    const/16 v12, 0x1e

    invoke-direct {v10, v11, v12, v0}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v10, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_FOREGROUND_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v13, "CANCELLED_BY_UNKNOWN_REASON"

    const/16 v14, 0xa

    invoke-direct {v0, v14, v11, v13}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_UNKNOWN_REASON:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v11, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v13, "CANCELLED_SUPERSEDED"

    const/16 v15, 0xb

    invoke-direct {v11, v15, v14, v13}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v11, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v13, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v14, "CANCELLED_BY_APP_OPS"

    const/16 v12, 0xc

    const/16 v15, 0x1d

    invoke-direct {v13, v12, v15, v14}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v13, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v14, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v15, "IGNORED_ERROR_APP_OPS"

    const/16 v12, 0xd

    move-object/from16 v20, v0

    const/16 v0, 0xb

    invoke-direct {v14, v12, v0, v15}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v14, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v15, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v0, "IGNORED_ERROR_CANCELLING"

    const/16 v12, 0xe

    move-object/from16 v21, v1

    const/16 v1, 0xc

    invoke-direct {v15, v12, v1, v0}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v15, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_CANCELLING:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "IGNORED_ERROR_SCHEDULING"

    const/16 v12, 0xf

    move-object/from16 v22, v2

    const/16 v2, 0xd

    invoke-direct {v0, v12, v2, v1}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v1, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v2, "IGNORED_ERROR_TOKEN"

    const/16 v12, 0x10

    move-object/from16 v23, v0

    const/16 v0, 0xe

    invoke-direct {v1, v12, v0, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v2, "IGNORED_APP_OPS"

    const/16 v12, 0x11

    move-object/from16 v24, v1

    const/16 v1, 0xf

    invoke-direct {v0, v12, v1, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v1, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v2, "IGNORED_BACKGROUND"

    const/16 v12, 0x12

    move-object/from16 v17, v0

    const/16 v0, 0x10

    invoke-direct {v1, v12, v0, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_BACKGROUND:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v2, "IGNORED_MISSING_PERMISSION"

    const/16 v12, 0x13

    move-object/from16 v25, v1

    const/16 v1, 0x1c

    invoke-direct {v0, v12, v1, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_MISSING_PERMISSION:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v2, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "IGNORED_UNSUPPORTED"

    const/16 v12, 0x14

    move-object/from16 v28, v0

    const/16 v0, 0x12

    invoke-direct {v2, v12, v0, v1}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v2, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "IGNORED_FOR_EXTERNAL"

    const/16 v12, 0x15

    move-object/from16 v29, v2

    const/16 v2, 0x13

    invoke-direct {v0, v12, v2, v1}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v1, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v2, "IGNORED_FOR_HIGHER_IMPORTANCE"

    const/16 v12, 0x16

    move-object/from16 v30, v0

    const/16 v0, 0x14

    invoke-direct {v1, v12, v0, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_HIGHER_IMPORTANCE:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v2, "IGNORED_FOR_ONGOING"

    const/16 v12, 0x17

    move-object/from16 v31, v1

    const/16 v1, 0x15

    invoke-direct {v0, v12, v1, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v1, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v2, "IGNORED_FOR_POWER"

    const/16 v12, 0x18

    move-object/from16 v32, v0

    const/16 v0, 0x16

    invoke-direct {v1, v12, v0, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_POWER:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v2, "IGNORED_FOR_RINGER_MODE"

    const/16 v12, 0x19

    move-object/from16 v33, v1

    const/16 v1, 0x17

    invoke-direct {v0, v12, v1, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_RINGER_MODE:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v1, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v2, "IGNORED_FOR_SETTINGS"

    const/16 v12, 0x1a

    move-object/from16 v34, v0

    const/16 v0, 0x18

    invoke-direct {v1, v12, v0, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v2, "IGNORED_SUPERSEDED"

    const/16 v12, 0x1b

    move-object/from16 v35, v1

    const/16 v1, 0x19

    invoke-direct {v0, v12, v1, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v1, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v2, "IGNORED_FROM_VIRTUAL_DEVICE"

    const/16 v12, 0x1c

    move-object/from16 v19, v0

    const/16 v0, 0x1a

    invoke-direct {v1, v12, v0, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v2, "IGNORED_ON_WIRELESS_CHARGER"

    move-object/from16 v18, v1

    const/16 v1, 0x1b

    const/16 v12, 0x1d

    invoke-direct {v0, v12, v1, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ON_WIRELESS_CHARGER:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v1, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v2, "CANCELLED_ACH_REPEATED"

    const/16 v12, 0x1f

    move-object/from16 v26, v0

    const/16 v0, 0x1e

    invoke-direct {v1, v0, v12, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v2, "CANCELLED_ACH_NON_REPEATED"

    move-object/from16 v16, v1

    const/16 v1, 0x20

    invoke-direct {v0, v12, v1, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    new-instance v2, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v12, "CANCELLED_SERVICE_RECOVERED"

    move-object/from16 v27, v0

    const/16 v0, 0x21

    invoke-direct {v2, v1, v0, v12}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v2, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SERVICE_RECOVERED:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v1, Lcom/android/server/vibrator/VibrationSession$Status;

    const/16 v12, 0x22

    move-object/from16 v36, v2

    const-string v2, "CANCELLED_BY_DISABLED_NOTIFICATION"

    invoke-direct {v1, v0, v12, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_DISABLED_NOTIFICATION:Lcom/android/server/vibrator/VibrationSession$Status;

    move-object/from16 v2, v31

    move-object/from16 v31, v16

    move-object/from16 v16, v23

    move-object/from16 v23, v2

    move-object v12, v11

    move-object/from16 v11, v20

    move-object/from16 v2, v22

    move-object/from16 v20, v28

    move-object/from16 v22, v30

    move-object/from16 v28, v19

    move-object/from16 v19, v25

    move-object/from16 v30, v26

    move-object/from16 v25, v33

    move-object/from16 v26, v34

    move-object/from16 v33, v36

    move-object/from16 v34, v1

    move-object/from16 v1, v21

    move-object/from16 v21, v29

    move-object/from16 v29, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v24

    move-object/from16 v24, v32

    move-object/from16 v32, v27

    move-object/from16 v27, v35

    filled-new-array/range {v1 .. v34}, [Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->$VALUES:[Lcom/android/server/vibrator/VibrationSession$Status;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/android/server/vibrator/VibrationSession$Status;->mProtoEnumValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/vibrator/VibrationSession$Status;
    .registers 2

    const-class v0, Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0
.end method

.method public static values()[Lcom/android/server/vibrator/VibrationSession$Status;
    .registers 1

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->$VALUES:[Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v0}, [Lcom/android/server/vibrator/VibrationSession$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/vibrator/VibrationSession$Status;

    return-object v0
.end method


# virtual methods
.method public final getProtoEnumValue()I
    .registers 1

    iget p0, p0, Lcom/android/server/vibrator/VibrationSession$Status;->mProtoEnumValue:I

    return p0
.end method
