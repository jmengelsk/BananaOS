.class public final synthetic Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/AppCompatConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppCompatConfiguration;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/AppCompatConfiguration;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    packed-switch v0, :pswitch_data_32

    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mTranslucentLetterboxingOverrideEnabled:Z

    return-void

    :pswitch_10  #0xa
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    return-void

    :pswitch_13  #0x9
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    return-void

    :pswitch_16  #0x8
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    return-void

    :pswitch_19  #0x7
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    return-void

    :pswitch_1c  #0x6
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    return-void

    :pswitch_1f  #0x5
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatFreeformWindowingTreatmentEnabled:Z

    return-void

    :pswitch_22  #0x4
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    return-void

    :pswitch_25  #0x3
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    return-void

    :pswitch_28  #0x2
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioFullscreenOverrideEnabled:Z

    return-void

    :pswitch_2b  #0x1
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioSettingsOverrideEnabled:Z

    return-void

    :pswitch_2e  #0x0
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2e  #00000000
        :pswitch_2b  #00000001
        :pswitch_28  #00000002
        :pswitch_25  #00000003
        :pswitch_22  #00000004
        :pswitch_1f  #00000005
        :pswitch_1c  #00000006
        :pswitch_19  #00000007
        :pswitch_16  #00000008
        :pswitch_13  #00000009
        :pswitch_10  #0000000a
    .end packed-switch
.end method
