.class public Lcom/android/server/sepunion/cover/CoverTestModeUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sCurrentTestVisibleRect:Landroid/graphics/Rect;


# instance fields
.field public final mTestModeChangeHandler:Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;-><init>(Lcom/android/server/sepunion/cover/CoverTestModeUtils;)V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mTestModeChangeHandler:Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;

    const-string p0, "CoverManager_CoverTestModeUtils"

    const-string/jumbo p1, "This version has been shipped!! Then cover test mode is not available"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
