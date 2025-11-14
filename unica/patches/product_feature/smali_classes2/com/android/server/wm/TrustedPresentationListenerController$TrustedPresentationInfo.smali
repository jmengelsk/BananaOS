.class public final Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mEnteredTrustedPresentationStateTime:J

.field public final mId:I

.field public mLastComputedTrustedPresentationState:Z

.field public mLastReportedTrustedPresentationState:Z

.field public final mListener:Landroid/window/ITrustedPresentationListener;

.field public final mThresholds:Landroid/window/TrustedPresentationThresholds;


# direct methods
.method public constructor <init>(Landroid/window/TrustedPresentationThresholds;ILandroid/window/ITrustedPresentationListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastComputedTrustedPresentationState:Z

    iput-boolean v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastReportedTrustedPresentationState:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mEnteredTrustedPresentationStateTime:J

    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    iput p2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mId:I

    iput-object p3, p0, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mListener:Landroid/window/ITrustedPresentationListener;

    return-void
.end method
