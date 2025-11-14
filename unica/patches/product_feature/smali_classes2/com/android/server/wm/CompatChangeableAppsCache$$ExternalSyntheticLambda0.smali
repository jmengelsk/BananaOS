.class public final synthetic Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/core/CompatChangeableApps;

    packed-switch v0, :pswitch_data_2a

    const-wide/32 v0, 0xfbbb1dc

    invoke-virtual {p1, v0, v1, p0}, Lcom/samsung/android/core/CompatChangeableApps;->containsOverride(JLjava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_11  #0x4
    invoke-virtual {p1, p0}, Lcom/samsung/android/core/CompatChangeableApps;->isResizeableActivityOverrideDisallowed(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_16  #0x3
    invoke-virtual {p1, p0}, Lcom/samsung/android/core/CompatChangeableApps;->hasGameCategory(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_1b  #0x2
    invoke-virtual {p1, p0}, Lcom/samsung/android/core/CompatChangeableApps;->isMinAspectRatioOverrideDisallowed(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_20  #0x1
    invoke-virtual {p1, p0}, Lcom/samsung/android/core/CompatChangeableApps;->hasLauncherActivity(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_25  #0x0
    invoke-virtual {p1, p0}, Lcom/samsung/android/core/CompatChangeableApps;->isOrientationOverrideDisallowed(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_25  #00000000
        :pswitch_20  #00000001
        :pswitch_1b  #00000002
        :pswitch_16  #00000003
        :pswitch_11  #00000004
    .end packed-switch
.end method
