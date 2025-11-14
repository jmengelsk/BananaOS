.class public abstract Lcom/samsung/android/server/audio/AudioHqmHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final BIG_DATA:[[Ljava/lang/String;

.field public static mAudioServerResetCount:I

.field public static mAudioServerResetCountMaxLimit:Z

.field public static mPreAudioServerResetCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 17

    const-string v8, "HW_CUST"

    const-string v9, "HW_CUSC"

    const-string v0, "HW_CSPT"

    const-string v1, "HW_CSPC"

    const-string v2, "HW_CRET"

    const-string v3, "HW_CREC"

    const-string v4, "HW_CEAT"

    const-string v5, "HW_CEAC"

    const-string v6, "HW_CBTT"

    const-string v7, "HW_CBTC"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v15, "MU_MEVL"

    const-string/jumbo v16, "MU_MUHV"

    const-string v1, "HW_MSPT"

    const-string v2, "HW_MSPC"

    const-string v3, "HW_MEAT"

    const-string v4, "HW_MEAC"

    const-string v5, "HW_MBTT"

    const-string v6, "HW_MBTC"

    const-string v7, "HW_MUST"

    const-string v8, "HW_MUSC"

    const-string v9, "HW_MUHT"

    const-string v10, "HW_MUHC"

    const-string v11, "HW_DLBY"

    const-string v12, "HW_3EJC"

    const-string v13, "HW_4EJC"

    const-string/jumbo v14, "MU_MSVL"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "FW_VSMC"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "RCV_EXCU_OVERCNT"

    const-string/jumbo v10, "SPK_EXCU_OVERCNT"

    const-string/jumbo v3, "RCV_TEMP_MAX"

    const-string/jumbo v4, "SPK_TEMP_MAX"

    const-string/jumbo v5, "RCV_TEMP_OVERCNT"

    const-string/jumbo v6, "SPK_TEMP_OVERCNT"

    const-string/jumbo v7, "RCV_EXCU_MAX"

    const-string/jumbo v8, "SPK_EXCU_MAX"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/AudioHqmHelper;->BIG_DATA:[[Ljava/lang/String;

    return-void
.end method

.method public static sendHqmData(Landroid/content/Context;Z)V
    .registers 13

    if-eqz p1, :cond_6

    const-string/jumbo v0, "l_bigdata_logging;l_bigdata_app"

    goto :goto_9

    :cond_6
    const-string/jumbo v0, "l_bigdata_logging"

    :goto_9
    new-instance v1, Lcom/samsung/android/media/AudioParameter;

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/samsung/android/media/AudioParameter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_14
    const/4 v3, 0x4

    const-string v4, "FWAC"

    if-ge v2, v3, :cond_4e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/samsung/android/server/audio/AudioHqmHelper;->BIG_DATA:[[Ljava/lang/String;

    aget-object v6, v6, v2

    array-length v7, v6

    move v8, v0

    :goto_29
    if-ge v8, v7, :cond_3c

    aget-object v9, v6, v8

    invoke-virtual {v1, v9}, Lcom/samsung/android/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_39

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    :cond_3c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_43

    goto :goto_4b

    :cond_43
    const/4 v6, 0x3

    if-ne v2, v6, :cond_48

    const-string v4, "AUDI"

    :cond_48
    invoke-static {p0, v3, v5, v4}, Lcom/samsung/android/server/audio/AudioHqmHelper;->sendLoggingDataToHQM(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    :goto_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_4e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget v2, Lcom/samsung/android/server/audio/AudioHqmHelper;->mAudioServerResetCount:I

    sget v3, Lcom/samsung/android/server/audio/AudioHqmHelper;->mPreAudioServerResetCount:I

    sub-int v3, v2, v3

    if-nez p1, :cond_62

    sput v2, Lcom/samsung/android/server/audio/AudioHqmHelper;->mPreAudioServerResetCount:I

    :cond_62
    const-string p1, "FW_ASRC"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0, v1, v4}, Lcom/samsung/android/server/audio/AudioHqmHelper;->sendLoggingDataToHQM(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static sendLoggingDataToHQM(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 15

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1f

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_19} :catch_1c

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :catch_1c
    move-exception v0

    move-object p1, v0

    goto :goto_24

    :cond_1f
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    :goto_24
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_28
    if-nez p1, :cond_2b

    return-void

    :cond_2b
    const-string/jumbo p2, "\\{"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "\\}"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string p1, "HqmManagerService"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/os/SemHqmManager;

    const-string v6, "0.0"

    const-string/jumbo v7, "sec"

    const/4 v2, 0x0

    const-string v3, "Audio"

    const-string/jumbo v5, "sm"

    const-string v8, ""

    const-string v10, ""

    move-object v4, p3

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
