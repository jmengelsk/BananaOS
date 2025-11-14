.class public final synthetic Lcom/android/server/power/ScreenUndimDetector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/ScreenUndimDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/ScreenUndimDetector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ScreenUndimDetector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/ScreenUndimDetector;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6

    iget-object p0, p0, Lcom/android/server/power/ScreenUndimDetector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/ScreenUndimDetector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDeviceConfigChange; key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ScreenUndimDetector"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_7a

    goto :goto_69

    :sswitch_3a
    const-string/jumbo v3, "max_duration_between_undims_millis"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    goto :goto_69

    :cond_44
    const/4 v1, 0x3

    goto :goto_69

    :sswitch_46
    const-string/jumbo v3, "keep_screen_on_for_millis"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    goto :goto_69

    :cond_50
    const/4 v1, 0x2

    goto :goto_69

    :sswitch_52
    const-string/jumbo v3, "keep_screen_on_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    goto :goto_69

    :cond_5c
    const/4 v1, 0x1

    goto :goto_69

    :sswitch_5e
    const-string/jumbo v3, "undims_required"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    goto :goto_69

    :cond_68
    const/4 v1, 0x0

    :goto_69
    packed-switch v1, :pswitch_data_8c

    const-string v1, "Ignoring change on "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :pswitch_76  #0x0, 0x1, 0x2, 0x3
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->readValuesFromDeviceConfig()V

    :cond_79
    return-void

    :sswitch_data_7a
    .sparse-switch
        -0x7e0c2586 -> :sswitch_5e
        -0x6f8997a6 -> :sswitch_52
        0x14fb26c3 -> :sswitch_46
        0x65e239ba -> :sswitch_3a
    .end sparse-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_76  #00000000
        :pswitch_76  #00000001
        :pswitch_76  #00000002
        :pswitch_76  #00000003
    .end packed-switch
.end method
