.class public final Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field public final BRIGHTNESS_URI:Landroid/net/Uri;

.field public final resolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iget-object p1, p1, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string/jumbo p1, "screen_brightness"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    const-string/jumbo p1, "screen_brightness_mode"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .registers 8

    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x2

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    iget-object v2, p1, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-boolean v3, p1, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mACLwithBrightness:Z

    if-eqz v3, :cond_20

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStatewithBrightness(IZ)V

    :cond_20
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    iget p1, p1, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AUTO_CURRENT_LIMIT_VERSION:I

    const-string/jumbo v2, "screen_brightness_mode"

    const/4 v3, 0x3

    if-ne p1, v3, :cond_4e

    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_44

    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    iget v4, p1, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    if-eqz v4, :cond_4e

    invoke-virtual {p1, v3}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStateInt(I)V

    goto :goto_4e

    :cond_44
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    iget v4, p1, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    if-eqz v4, :cond_4e

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStateInt(I)V

    :cond_4e
    :goto_4e
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    iget p1, p1, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AUTO_CURRENT_LIMIT_VERSION:I

    const/4 v4, 0x4

    if-ne p1, v4, :cond_6e

    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6e

    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_6e

    iget-object p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    iget p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    if-eqz p1, :cond_6e

    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStateInt(I)V

    :cond_6e
    return-void
.end method
