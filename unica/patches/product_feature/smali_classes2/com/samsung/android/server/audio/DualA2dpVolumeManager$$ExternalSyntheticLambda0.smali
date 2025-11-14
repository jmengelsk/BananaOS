.class public final synthetic Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    iput p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    iget p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v1

    const-string v2, "AS.DualA2dpManager"

    if-eqz v1, :cond_15

    const-string p0, "Cannot access audioserver"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    new-instance v1, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v1}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    const-string/jumbo v3, "audioParam"

    invoke-virtual {v1, v3}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v1

    const-string/jumbo v3, "l_volume_table"

    invoke-virtual {v1, v3}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_41

    const-string/jumbo p0, "cannot get volume tables. using default table"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_41
    add-int/lit8 v3, p0, 0x1

    new-array v3, v3, [F

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ";"

    invoke-direct {v4, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v5, v1

    :goto_4e
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_6b

    if-gt v5, p0, :cond_6b

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    :try_start_5c
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v3, v5
    :try_end_62
    .catch Ljava/lang/NumberFormatException; {:try_start_5c .. :try_end_62} :catch_64

    move v5, v7

    goto :goto_4e

    :catch_64
    const-string/jumbo p0, "invalid value "

    invoke-static {p0, v6, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6b
    if-gt v5, p0, :cond_74

    const-string/jumbo p0, "incorrect volume table, using default table"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_74
    move v2, v1

    :goto_75
    sget-object v4, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->FINE_VOLUME_TABLE:[F

    if-ge v2, p0, :cond_97

    add-int/lit8 v5, v2, 0x1

    aget v6, v3, v5

    aget v7, v3, v2

    sub-float/2addr v6, v7

    const/high16 v7, 0x41200000  # 10.0f

    div-float/2addr v6, v7

    move v7, v1

    :goto_84
    const/16 v8, 0xa

    if-ge v7, v8, :cond_95

    mul-int/lit8 v8, v2, 0xa

    add-int/2addr v8, v7

    aget v9, v3, v2

    int-to-float v10, v7

    mul-float/2addr v10, v6

    add-float/2addr v10, v9

    aput v10, v4, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_84

    :cond_95
    move v2, v5

    goto :goto_75

    :cond_97
    iget p0, v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->MAX_VOLUME:I

    const/high16 v0, 0x3f800000  # 1.0f

    aput v0, v4, p0

    return-void
.end method
