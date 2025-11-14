.class public final enum Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum DELETE_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum DETACH:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum GET_MODEL_STATE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum GET_MODULE_PROPERTIES:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum LOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum MODULE_DIED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum PAUSE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum PAUSE_FAILED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum RESOURCES_AVAILABLE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum RESUME:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum RESUME_FAILED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum SET_PARAMETER:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum START_RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum START_RECOGNITION_SERVICE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum STOP_RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum STOP_RECOGNITION_SERVICE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum UNLOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

.field public static final enum UPDATE_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const-string/jumbo v0, "START_RECOGNITION"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->START_RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const-string/jumbo v0, "STOP_RECOGNITION"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->STOP_RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const-string v0, "LOAD_MODEL"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->LOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const-string/jumbo v0, "UNLOAD_MODEL"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->UNLOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const-string/jumbo v0, "UPDATE_MODEL"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->UPDATE_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const-string v0, "DELETE_MODEL"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->DELETE_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    new-instance v7, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const-string/jumbo v0, "START_RECOGNITION_SERVICE"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->START_RECOGNITION_SERVICE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    new-instance v8, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const-string/jumbo v0, "STOP_RECOGNITION_SERVICE"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->STOP_RECOGNITION_SERVICE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    new-instance v9, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const-string v0, "GET_MODEL_STATE"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->GET_MODEL_STATE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    new-instance v10, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const-string/jumbo v0, "SET_PARAMETER"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->SET_PARAMETER:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    new-instance v11, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const-string v0, "GET_MODULE_PROPERTIES"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->GET_MODULE_PROPERTIES:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    new-instance v12, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const-string v0, "DETACH"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->DETACH:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    new-instance v13, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const-string/jumbo v0, "RECOGNITION"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    new-instance v14, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const-string/jumbo v0, "RESUME"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RESUME:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    new-instance v15, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const-string/jumbo v0, "RESUME_FAILED"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RESUME_FAILED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const-string/jumbo v1, "PAUSE"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->PAUSE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const-string/jumbo v2, "PAUSE_FAILED"

    move-object/from16 v18, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->PAUSE_FAILED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const-string/jumbo v2, "RESOURCES_AVAILABLE"

    move-object/from16 v19, v1

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RESOURCES_AVAILABLE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const-string/jumbo v2, "MODULE_DIED"

    move-object/from16 v20, v0

    const/16 v0, 0x12

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->MODULE_DIED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    move-object/from16 v2, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    filled-new-array/range {v1 .. v19}, [Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    move-result-object v0

    sput-object v0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->$VALUES:[Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;
    .locals 1

    const-class v0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;
    .locals 1

    sget-object v0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->$VALUES:[Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {v0}, [Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    return-object v0
.end method
