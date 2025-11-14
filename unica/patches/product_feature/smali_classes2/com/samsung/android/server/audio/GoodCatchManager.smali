.class public final Lcom/samsung/android/server/audio/GoodCatchManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final SOUND_FUNC:[Ljava/lang/String;


# instance fields
.field public final mAudioStateListener:Lcom/samsung/android/server/audio/GoodCatchManager$1;

.field public final mModule:Ljava/lang/String;

.field public final mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

.field public final mSoundFunc:[Z

.field public final mVibrateStateListener:Lcom/samsung/android/server/audio/GoodCatchManager$1;

.field public mVibrationFunc:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "mediavolume"

    const-string/jumbo v1, "playback"

    const-string/jumbo v2, "ringermode"

    const-string/jumbo v3, "callmode"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_FUNC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [Z

    fill-array-data v1, :array_4a

    iput-object v1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationFunc:Z

    new-instance v1, Lcom/samsung/android/server/audio/GoodCatchManager$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/audio/GoodCatchManager$1;-><init>(Lcom/samsung/android/server/audio/GoodCatchManager;I)V

    iput-object v1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mAudioStateListener:Lcom/samsung/android/server/audio/GoodCatchManager$1;

    new-instance v0, Lcom/samsung/android/server/audio/GoodCatchManager$1;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/server/audio/GoodCatchManager$1;-><init>(Lcom/samsung/android/server/audio/GoodCatchManager;I)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrateStateListener:Lcom/samsung/android/server/audio/GoodCatchManager$1;

    iput-object p2, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    const-string v2, "AudioService"

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    new-instance p2, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    sget-object v0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_FUNC:[Ljava/lang/String;

    invoke-direct {p2, p1, v2, v0, v1}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    iput-object p2, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    return-void

    :cond_31
    const-string/jumbo v1, "VibratorService"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_48

    new-instance p2, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    const-string/jumbo v2, "vibration"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, p1, v1, v2, v0}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    iput-object p2, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    :cond_48
    return-void

    nop

    :array_4a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
