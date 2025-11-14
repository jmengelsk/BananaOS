.class public final Lcom/android/server/power/HqmDataDispatcher$DisplayStat;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final BRIGHTNESS_DIM:I

.field public static final BRIGHTNESS_HIGHEST:I


# instance fields
.field public final mBrightnessDuration:[J

.field public mCurrentBrightnessRange:I

.field public final mDisplayType:I

.field public mScreenBrightnessHighestDuration:J

.field public mScreenBrightnessHighestStarted:Z

.field public final mScreenBrightnessHighestTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

.field public final mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

.field public mScreenCurtainCount:J

.field public mScreenCurtainDuration:J

.field public mScreenCurtainEnabled:Z

.field public final mScreenCurtainTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

.field public mScreenOnCount:J

.field public mScreenOnDuration:J

.field public final mScreenOnTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

.field public mScreenState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->BRIGHTNESS_DIM:I

    sget v0, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v0

    sput v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->BRIGHTNESS_HIGHEST:I

    return-void
.end method

.method public constructor <init>(ILcom/android/server/power/HqmDataDispatcher$Clock;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenState:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/android/server/power/HqmDataDispatcher$Timer;

    iput-object v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mBrightnessDuration:[J

    iput p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mDisplayType:I

    new-instance p1, Lcom/android/server/power/HqmDataDispatcher$Timer;

    invoke-direct {p1, p2}, Lcom/android/server/power/HqmDataDispatcher$Timer;-><init>(Lcom/android/server/power/HqmDataDispatcher$Clock;)V

    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    new-instance p1, Lcom/android/server/power/HqmDataDispatcher$Timer;

    invoke-direct {p1, p2}, Lcom/android/server/power/HqmDataDispatcher$Timer;-><init>(Lcom/android/server/power/HqmDataDispatcher$Clock;)V

    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    new-instance p1, Lcom/android/server/power/HqmDataDispatcher$Timer;

    invoke-direct {p1, p2}, Lcom/android/server/power/HqmDataDispatcher$Timer;-><init>(Lcom/android/server/power/HqmDataDispatcher$Clock;)V

    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnCount:J

    iput-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnDuration:J

    move p1, v0

    :goto_0
    if-ge p1, v1, :cond_0

    iget-object v4, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

    new-instance v5, Lcom/android/server/power/HqmDataDispatcher$Timer;

    invoke-direct {v5, p2}, Lcom/android/server/power/HqmDataDispatcher$Timer;-><init>(Lcom/android/server/power/HqmDataDispatcher$Clock;)V

    aput-object v5, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainCount:J

    iput-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainDuration:J

    iput-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    iput-boolean v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    return-void
.end method
