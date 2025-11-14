.class public final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mShellCallbacksToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mShellCallbacksToken:Landroid/os/IBinder;

    return-void
.end method

.method public static parseFloat(Ljava/lang/String;Ljava/lang/String;)F
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseInt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final nextEffect()Landroid/os/VibrationEffect;
    .registers 19

    const-string v0, "-r"

    const-string v1, "-w"

    const-string v3, "-a"

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v7

    :catch_a
    :cond_a
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3d3

    const-string/jumbo v9, "oneshot"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "Expected delay millis after -w"

    if-eqz v9, :cond_66

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_20
    :goto_20
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3d

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2e

    const/4 v8, 0x1

    goto :goto_20

    :cond_2e
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    goto :goto_20

    :cond_3d
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Expected one-shot duration millis"

    invoke-static {v10, v11}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    int-to-long v10, v10

    if-eqz v8, :cond_55

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    const-string v12, "Expected one-shot amplitude"

    invoke-static {v8, v12}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    goto :goto_56

    :cond_55
    const/4 v8, -0x1

    :goto_56
    int-to-long v12, v9

    invoke-static {v12, v13}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    invoke-static {v10, v11, v8}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    goto :goto_a

    :cond_66
    const-string/jumbo v9, "waveform"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v12, 0x0

    const-string v13, "Expected repeat index after -r"

    if-eqz v9, :cond_20e

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_7a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_de

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_3d8

    :goto_87
    const/4 v5, -0x1

    :goto_88
    const/high16 v16, 0x3f800000  # 1.0f

    goto :goto_c2

    :sswitch_8b
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_92

    goto :goto_87

    :cond_92
    const/4 v5, 0x4

    goto :goto_88

    :sswitch_94
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9b

    goto :goto_87

    :cond_9b
    const/4 v5, 0x3

    goto :goto_88

    :sswitch_9d
    const/high16 v16, 0x3f800000  # 1.0f

    const-string v11, "-f"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a8

    goto :goto_bf

    :cond_a8
    const/4 v5, 0x2

    goto :goto_c2

    :sswitch_aa
    const/high16 v16, 0x3f800000  # 1.0f

    const-string v11, "-c"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b5

    goto :goto_bf

    :cond_b5
    const/4 v5, 0x1

    goto :goto_c2

    :sswitch_b7
    const/high16 v16, 0x3f800000  # 1.0f

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c1

    :goto_bf
    const/4 v5, -0x1

    goto :goto_c2

    :cond_c1
    const/4 v5, 0x0

    :goto_c2
    packed-switch v5, :pswitch_data_3ee

    goto :goto_7a

    :pswitch_c6  #0x4
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    goto :goto_7a

    :pswitch_cf  #0x3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v13}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_7a

    :pswitch_d8  #0x2
    const/4 v9, 0x1

    goto :goto_7a

    :pswitch_da  #0x1
    const/4 v15, 0x1

    goto :goto_7a

    :pswitch_dc  #0x0
    const/4 v8, 0x1

    goto :goto_7a

    :cond_de
    const/high16 v16, 0x3f800000  # 1.0f

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_ef
    :goto_ef
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_139

    :try_start_f5
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;
    :try_end_103
    .catch Ljava/lang/NumberFormatException; {:try_start_f5 .. :try_end_103} :catch_139

    if-eqz v8, :cond_11b

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v13

    const-string v2, "Expected waveform amplitude"

    invoke-static {v13, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v13, 0x437f0000  # 255.0f

    div-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_125

    :cond_11b
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-float v2, v16, v12

    move v12, v2

    :goto_125
    if-eqz v9, :cond_ef

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v13, "Expected waveform frequency"

    invoke-static {v2, v13}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ef

    :catch_139
    :cond_139
    int-to-long v12, v14

    invoke-static {v12, v13}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v2

    const/4 v8, 0x0

    :goto_146
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_1f8

    if-eqz v15, :cond_15e

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    invoke-static {v12, v13}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v12

    goto :goto_160

    :cond_15e
    sget-object v12, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    :goto_160
    if-eqz v15, :cond_165

    sget-object v13, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    goto :goto_174

    :cond_165
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v13, v13

    invoke-static {v13, v14}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v13

    :goto_174
    if-eqz v9, :cond_198

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-static {v14}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v14

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    const/16 v17, 0x1

    invoke-static/range {v16 .. v16}, Landroid/os/VibrationEffect$VibrationParameter;->targetFrequency(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v6

    invoke-virtual {v2, v12, v14, v6}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    goto :goto_1ab

    :cond_198
    const/16 v17, 0x1

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v6}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v6

    invoke-virtual {v2, v12, v6}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    :goto_1ab
    invoke-virtual {v13}, Ljava/time/Duration;->isZero()Z

    move-result v6

    if-nez v6, :cond_1b4

    invoke-virtual {v2, v13}, Landroid/os/VibrationEffect$WaveformBuilder;->addSustain(Ljava/time/Duration;)Landroid/os/VibrationEffect$WaveformBuilder;

    :cond_1b4
    if-lez v8, :cond_1f4

    if-ne v8, v4, :cond_1f4

    invoke-virtual {v2}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    if-eqz v9, :cond_1e2

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v2

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v6}, Landroid/os/VibrationEffect$VibrationParameter;->targetFrequency(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/VibrationEffect;->startWaveform(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v2

    goto :goto_1f4

    :cond_1e2
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v2

    invoke-static {v2}, Landroid/os/VibrationEffect;->startWaveform(Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v2

    :cond_1f4
    :goto_1f4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_146

    :cond_1f8
    const/16 v17, 0x1

    if-gez v4, :cond_205

    invoke-virtual {v2}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    goto/16 :goto_a

    :cond_205
    invoke-virtual {v2}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/os/VibrationEffect$Composition;->repeatEffectIndefinitely(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    goto/16 :goto_a

    :cond_20e
    const/high16 v16, 0x3f800000  # 1.0f

    const/16 v17, 0x1

    const-string/jumbo v2, "prebaked"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25b

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, 0x0

    :cond_220
    :goto_220
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_240

    const-string v6, "-b"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_231

    move/from16 v2, v17

    goto :goto_220

    :cond_231
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_220

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_220

    :cond_240
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Expected prebaked effect id"

    invoke-static {v5, v6}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    int-to-long v8, v4

    invoke-static {v8, v9}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    invoke-static {v5, v2}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    goto/16 :goto_a

    :cond_25b
    const-string/jumbo v2, "primitives"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2be

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    :goto_267
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    move/from16 v4, v16

    const/4 v2, 0x0

    const/4 v5, 0x0

    :cond_271
    :goto_271
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2af

    const-string v8, "-s"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28a

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Expected scale after -s"

    invoke-static {v4, v6}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v4

    goto :goto_271

    :cond_28a
    const-string v8, "-o"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29f

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Expected offset millis after -o"

    invoke-static {v2, v5}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move/from16 v2, v17

    goto :goto_271

    :cond_29f
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_271

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v2, 0x0

    goto :goto_271

    :cond_2af
    :try_start_2af
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6, v4, v5, v2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFII)Landroid/os/VibrationEffect$Composition;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;
    :try_end_2bd
    .catch Ljava/lang/NumberFormatException; {:try_start_2af .. :try_end_2bd} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_2af .. :try_end_2bd} :catch_a

    goto :goto_267

    :cond_2be
    const-string/jumbo v2, "envelope"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d3

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    const/high16 v2, 0x7fc00000  # Float.NaN

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_2ce
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_315

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_3fc

    :goto_2db
    const/4 v6, -0x1

    goto :goto_2fa

    :sswitch_2dd
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e4

    goto :goto_2db

    :cond_2e4
    const/4 v6, 0x2

    goto :goto_2fa

    :sswitch_2e6
    const-string v8, "-i"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2ef

    goto :goto_2db

    :cond_2ef
    move/from16 v6, v17

    goto :goto_2fa

    :sswitch_2f2
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f9

    goto :goto_2db

    :cond_2f9
    const/4 v6, 0x0

    :goto_2fa
    packed-switch v6, :pswitch_data_40a

    goto :goto_2ce

    :pswitch_2fe  #0x2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_2ce

    :pswitch_307  #0x1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Expected initial sharpness after -i"

    invoke-static {v2, v6}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    goto :goto_2ce

    :pswitch_312  #0x0
    move/from16 v4, v17

    goto :goto_2ce

    :cond_315
    if-eqz v4, :cond_327

    new-instance v4, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;

    move/from16 v6, v17

    invoke-direct {v4, v6}, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;-><init>(I)V

    new-instance v6, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    invoke-direct {v6}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;-><init>()V

    iput-object v6, v4, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/Object;

    const/4 v6, 0x2

    goto :goto_334

    :cond_327
    new-instance v4, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;

    const/4 v6, 0x2

    invoke-direct {v4, v6}, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;-><init>(I)V

    new-instance v8, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-direct {v8}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;-><init>()V

    iput-object v8, v4, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/Object;

    :goto_334
    iget v8, v4, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->$r8$classId:I

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_34e

    packed-switch v8, :pswitch_data_414

    iget-object v9, v4, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/Object;

    check-cast v9, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-virtual {v9, v2}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->setInitialSharpness(F)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    goto :goto_34e

    :pswitch_347  #0x1
    iget-object v9, v4, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/Object;

    check-cast v9, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    invoke-virtual {v9, v2}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->setInitialFrequencyHz(F)Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    :cond_34e
    :goto_34e
    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_350
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3aa

    if-lez v9, :cond_376

    if-ne v9, v5, :cond_376

    invoke-virtual {v4}, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->build()Landroid/os/VibrationEffect;

    move-result-object v2

    packed-switch v8, :pswitch_data_41a

    new-instance v11, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-direct {v11}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;-><init>()V

    iput-object v11, v4, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->setInitialSharpness(F)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    goto :goto_376

    :pswitch_36c  #0x1
    new-instance v11, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    invoke-direct {v11}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;-><init>()V

    iput-object v11, v4, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->setInitialFrequencyHz(F)Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    :cond_376
    :goto_376
    :try_start_376
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;
    :try_end_37d
    .catch Ljava/lang/NumberFormatException; {:try_start_376 .. :try_end_37d} :catch_3aa

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Expected envelope intensity"

    invoke-static {v11, v12}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Expected envelope sharpness"

    invoke-static {v12, v13}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v12

    int-to-long v13, v10

    packed-switch v8, :pswitch_data_420

    iget-object v10, v4, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/Object;

    check-cast v10, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->addControlPoint(FFJ)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    :goto_39c
    const/16 v17, 0x1

    goto :goto_3a7

    :pswitch_39f  #0x1
    iget-object v10, v4, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/Object;

    check-cast v10, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->addControlPoint(FFJ)Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    goto :goto_39c

    :goto_3a7
    add-int/lit8 v9, v9, 0x1

    goto :goto_350

    :catch_3aa
    :cond_3aa
    const/16 v17, 0x1

    if-ltz v5, :cond_3ca

    if-nez v2, :cond_3bd

    invoke-virtual {v4}, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->build()Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-static {v2}, Landroid/os/VibrationEffect;->createRepeatingEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    goto/16 :goto_a

    :cond_3bd
    invoke-virtual {v4}, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->build()Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/VibrationEffect;->createRepeatingEffect(Landroid/os/VibrationEffect;Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    goto/16 :goto_a

    :cond_3ca
    invoke-virtual {v4}, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->build()Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    goto/16 :goto_a

    :cond_3d3
    invoke-virtual {v7}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    :sswitch_data_3d8
    .sparse-switch
        0x5d4 -> :sswitch_b7
        0x5d6 -> :sswitch_aa
        0x5d9 -> :sswitch_9d
        0x5e5 -> :sswitch_94
        0x5ea -> :sswitch_8b
    .end sparse-switch

    :pswitch_data_3ee
    .packed-switch 0x0
        :pswitch_dc  #00000000
        :pswitch_da  #00000001
        :pswitch_d8  #00000002
        :pswitch_cf  #00000003
        :pswitch_c6  #00000004
    .end packed-switch

    :sswitch_data_3fc
    .sparse-switch
        0x5d4 -> :sswitch_2f2
        0x5dc -> :sswitch_2e6
        0x5e5 -> :sswitch_2dd
    .end sparse-switch

    :pswitch_data_40a
    .packed-switch 0x0
        :pswitch_312  #00000000
        :pswitch_307  #00000001
        :pswitch_2fe  #00000002
    .end packed-switch

    :pswitch_data_414
    .packed-switch 0x1
        :pswitch_347  #00000001
    .end packed-switch

    :pswitch_data_41a
    .packed-switch 0x1
        :pswitch_36c  #00000001
    .end packed-switch

    :pswitch_data_420
    .packed-switch 0x1
        :pswitch_39f  #00000001
    .end packed-switch
.end method

.method public final onCommand(Ljava/lang/String;)I
    .registers 10

    const-wide/32 v0, 0x800000

    :try_start_3
    const-string/jumbo v2, "list"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    const-string/jumbo p1, "onCommand: list"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runListVibrators()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_1a
    move-exception p0

    goto/16 :goto_111

    :cond_1d
    :try_start_1d
    const-string/jumbo v2, "synced"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string/jumbo p1, "onCommand: synced"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-static {v2}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_1a

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :cond_40
    :try_start_40
    const-string/jumbo v2, "combined"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_1a

    const-string v4, "Expected vibrator id after -v"

    const-string v5, "-v"

    if-eqz v2, :cond_81

    :try_start_4d
    const-string/jumbo p1, "onCommand: combined"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v2

    :goto_5c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    goto :goto_5c

    :cond_76
    invoke-virtual {v2}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V
    :try_end_7d
    .catchall {:try_start_4d .. :try_end_7d} :catchall_1a

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :cond_81
    :try_start_81
    const-string/jumbo v2, "sequential"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    const-string/jumbo p1, "onCommand: sequential"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v2

    :goto_99
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b3

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$SequentialCombination;

    goto :goto_99

    :cond_b3
    invoke-virtual {v2}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V
    :try_end_ba
    .catchall {:try_start_81 .. :try_end_ba} :catchall_1a

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :cond_be
    :try_start_be
    const-string/jumbo v2, "xml"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    const-string/jumbo p1, "onCommand: xml"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runXml()V
    :try_end_d0
    .catchall {:try_start_be .. :try_end_d0} :catchall_1a

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :cond_d4
    :try_start_d4
    const-string/jumbo v2, "cancel"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    const-string/jumbo p1, "onCommand: cancel"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p0}, Lcom/android/server/vibrator/VibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_e9
    .catchall {:try_start_d4 .. :try_end_e9} :catchall_1a

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :cond_ed
    :try_start_ed
    const-string/jumbo v2, "feedback"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    const-string/jumbo p1, "onCommand: feedback"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runHapticFeedback()V
    :try_end_ff
    .catchall {:try_start_ed .. :try_end_ff} :catchall_1a

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :cond_103
    :try_start_103
    const-string/jumbo v2, "onCommand: default"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0
    :try_end_10d
    .catchall {:try_start_103 .. :try_end_10d} :catchall_1a

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :goto_111
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final onHelp()V
    .registers 5

    const-string v0, "    wait time in milliseconds."

    const-string v1, "    If -w is provided, the effect will be played after the specified"

    const-string v2, ""

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    :try_start_a
    const-string/jumbo v3, "Vibrator Manager commands:"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  help"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Prints this help text."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  list"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Prints device vibrator ids; does not include input devices."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  synced [options] <effect>..."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Vibrates effect on all vibrators in sync."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  combined [options] (-v <vibrator-id> <effect>...)..."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Vibrates different effects on each vibrator in sync."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  sequential [options] (-v <vibrator-id> <effect>...)..."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Vibrates different effects on each vibrator in sequence."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  xml [options] <xml>"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Vibrates using combined vibration described in given XML string"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    on all vibrators in sync. The XML could be:"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "        A single <vibration-effect>, or"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "        A <vibration-select> containing multiple effects."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  feedback [options] <constant>"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Performs a haptic feedback with the given constant."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  cancel"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Cancels any active vibration"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "Effect commands:"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  oneshot [-w delay] [-a] <duration> [<amplitude>]"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Vibrates for duration milliseconds."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    If -a is provided, the command accepts a second argument for "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    amplitude, in a scale of 1-255."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  waveform [-w delay] [-r index] [-a] [-f] [-c] "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "(<duration> [<amplitude>] [<frequency>])..."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Vibrates for durations and amplitudes in list."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    If -r is provided, the waveform loops back to the specified"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    index (e.g. 0 loops from the beginning)."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    If -a is provided, the command expects amplitude to follow each"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    duration; otherwise, it accepts durations only and alternates"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    off/on."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    If -f is provided, the command expects frequency to follow each"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    amplitude or duration; otherwise, it uses resonant frequency."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    If -c is provided, the waveform is continuous and will ramp"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    between values; otherwise each entry is a fixed step."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Duration is in milliseconds; amplitude is a scale of 1-255;"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    frequency is an absolute value in hertz."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  envelope [-a] [-i initial sharpness] [-r index]  "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "[<duration1> <intensity1> <sharpness1>]..."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Generates a vibration pattern based on a series of duration, "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    intensity, and sharpness values. The total vibration time is "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    the sum of all durations."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    If -a is provided, the waveform will use the advanced APIs to "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    generate the vibration pattern and the input parameters "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    become [<duration1> <amplitude1> <frequency1>]."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    If -i is provided, the waveform will have an initial sharpness "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    it will start from."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    If -r is provided, the waveform loops back to the specified index"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    (e.g. 0 loops from the beginning)."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  prebaked [-w delay] [-b] <effect-id>"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Vibrates with prebaked effect."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    If -b is provided, the prebaked fallback effect will be played if"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    the device doesn\'t support the given effect-id."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  primitives ([-w delay] [-o time] [-s scale]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "<primitive-id> [<scale>])..."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Vibrates with a composed effect."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    If -w is provided, the next primitive will be played after the "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    specified wait time in milliseconds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    If -o is provided, the next primitive will be played at the "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    specified start offset time in milliseconds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    If -s is provided, the next primitive will be played with the"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    specified amplitude scale, in a scale of [0,1]."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Common Options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -f"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Force. Ignore Do Not Disturb setting."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -B"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Run in the background; without this option the shell cmd will"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    block until the vibration has completed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -d <description>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Add description to the vibration."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -P <package>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Add calling package to the vibration."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "Notes"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Vibrations triggered by these commands will be ignored when"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    device is on DND (Do Not Disturb) mode; notification strength"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    user settings will be applied for scale."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b1
    .catchall {:try_start_a .. :try_end_1b1} :catchall_1b5

    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_1b5
    move-exception v0

    if-eqz p0, :cond_1c0

    :try_start_1b8
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1bb
    .catchall {:try_start_1b8 .. :try_end_1bb} :catchall_1bc

    goto :goto_1c0

    :catchall_1bc
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c0
    :goto_1c0
    throw v0
.end method

.method public final runHapticFeedback()V
    .registers 14

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "Shell command"

    move v4, v2

    move-object v9, v3

    move v3, v4

    :goto_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_61

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_a6

    goto :goto_43

    :sswitch_18
    const-string v7, "-p"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    goto :goto_43

    :cond_21
    const/4 v6, 0x3

    goto :goto_43

    :sswitch_23
    const-string v7, "-f"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    goto :goto_43

    :cond_2c
    move v6, v0

    goto :goto_43

    :sswitch_2e
    const-string v7, "-d"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    goto :goto_43

    :cond_37
    move v6, v1

    goto :goto_43

    :sswitch_39
    const-string v7, "-B"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    goto :goto_43

    :cond_42
    move v6, v2

    :goto_43
    packed-switch v6, :pswitch_data_b8

    goto :goto_61

    :pswitch_47  #0x3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    goto :goto_9

    :pswitch_4e  #0x2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move v4, v1

    goto :goto_9

    :pswitch_53  #0x1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto :goto_9

    :pswitch_5c  #0x0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move v3, v1

    goto :goto_9

    :cond_61
    :goto_61
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Expected haptic feedback constant id"

    invoke-static {v1, v5}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v3, :cond_71

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    :goto_6f
    move-object v10, v1

    goto :goto_74

    :cond_71
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mShellCallbacksToken:Landroid/os/IBinder;

    goto :goto_6f

    :goto_74
    if-eqz v4, :cond_78

    move v11, v0

    goto :goto_79

    :cond_78
    move v11, v2

    :goto_79
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v12, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "com.android.shell"

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackInternal(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;II)Lcom/android/server/vibrator/HalVibration;

    move-result-object v0

    if-eqz v0, :cond_a4

    if-nez v3, :cond_a4

    :try_start_8c
    iget-object v0, v0, Lcom/android/server/vibrator/HalVibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getRampDownDurationMs()I

    move-result p0

    int-to-long v1, p0

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/vibrator/VibrationThread;->waitForThreadIdle(J)V
    :try_end_a4
    .catch Ljava/lang/InterruptedException; {:try_start_8c .. :try_end_a4} :catch_a4

    :catch_a4
    :cond_a4
    return-void

    nop

    :sswitch_data_a6
    .sparse-switch
        0x5b5 -> :sswitch_39
        0x5d7 -> :sswitch_2e
        0x5d9 -> :sswitch_23
        0x5e3 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_5c  #00000000
        :pswitch_53  #00000001
        :pswitch_4e  #00000002
        :pswitch_47  #00000003
    .end packed-switch
.end method

.method public final runListVibrators()V
    .registers 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    array-length v1, p0

    if-nez v1, :cond_14

    const-string/jumbo p0, "No vibrator found"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_20

    :catchall_12
    move-exception p0

    goto :goto_29

    :cond_14
    array-length v1, p0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_20

    aget v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_20
    :goto_20
    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_12

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return-void

    :goto_29
    if-eqz v0, :cond_33

    :try_start_2b
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_33
    :goto_33
    throw p0
.end method

.method public final runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V
    .registers 12

    iget-boolean v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->force:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    new-instance v1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v1}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/os/VibrationAttributes$Builder;->setFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v6

    iget-boolean v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    :goto_20
    move-object v8, v0

    goto :goto_25

    :cond_22
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mShellCallbacksToken:Landroid/os/IBinder;

    goto :goto_20

    :goto_25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->pkgName:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    const/4 v3, 0x0

    iget-object v7, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    move-object v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateWithPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;

    move-result-object p2

    if-eqz p2, :cond_57

    iget-boolean p1, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    if-nez p1, :cond_57

    :try_start_3f
    iget-object p1, p2, Lcom/android/server/vibrator/HalVibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getRampDownDurationMs()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/server/vibrator/VibrationThread;->waitForThreadIdle(J)V
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_57} :catch_57

    :catch_57
    :cond_57
    return-void
.end method

.method public final runXml()V
    .registers 7

    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Parsed XML cannot be resolved: "

    :try_start_c
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocument(Ljava/io/Reader;)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v5, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    iget-object v5, v4, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1c} :catch_2f

    :try_start_1c
    iget-object v4, v4, Lcom/android/server/vibrator/VibratorManagerService;->mCombinedVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_4c

    if-eqz v4, :cond_43

    :try_start_21
    invoke-virtual {v3, v4}, Landroid/os/vibrator/persistence/ParsedVibration;->resolve(Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-static {v3}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v1
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2b} :catch_2f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V

    return-void

    :catch_2f
    move-exception p0

    goto :goto_4f

    :cond_31
    :try_start_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "No vibrator info available to parse XML"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_4c} :catch_2f

    :catchall_4c
    move-exception p0

    :try_start_4d
    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw p0
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_4f} :catch_2f

    :goto_4f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Error parsing XML: "

    invoke-static {v2, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
