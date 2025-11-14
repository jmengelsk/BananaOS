.class public final synthetic Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/ScreenOnKeeper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/ScreenOnKeeper;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/ScreenOnKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/ScreenOnKeeper;

    packed-switch v0, :pswitch_data_34

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/power/ScreenOnKeeper$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/power/ScreenOnKeeper;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/ScreenOnKeeper$SettingsObserver;-><init>(Lcom/android/server/power/ScreenOnKeeper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/ScreenOnKeeper;->mSettingsObserver:Lcom/android/server/power/ScreenOnKeeper$SettingsObserver;

    iget-object v0, p0, Lcom/android/server/power/ScreenOnKeeper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_on_keeper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper;->mSettingsObserver:Lcom/android/server/power/ScreenOnKeeper$SettingsObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void

    :pswitch_28  #0x0
    iget-object v0, p0, Lcom/android/server/power/ScreenOnKeeper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper;->mSettingsObserver:Lcom/android/server/power/ScreenOnKeeper$SettingsObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_28  #00000000
    .end packed-switch
.end method
