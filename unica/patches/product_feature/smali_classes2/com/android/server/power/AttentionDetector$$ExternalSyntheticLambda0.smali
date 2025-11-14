.class public final synthetic Lcom/android/server/power/AttentionDetector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/AttentionDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/AttentionDetector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/AttentionDetector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/AttentionDetector;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 5

    iget-object p0, p0, Lcom/android/server/power/AttentionDetector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_5c

    goto :goto_48

    :sswitch_25
    const-string/jumbo v2, "pre_dim_check_duration_millis"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_48

    :cond_2f
    const/4 v1, 0x2

    goto :goto_48

    :sswitch_31
    const-string/jumbo v2, "max_extension_millis"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_48

    :cond_3b
    const/4 v1, 0x1

    goto :goto_48

    :sswitch_3d
    const-string/jumbo v2, "post_dim_check_duration_millis"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    goto :goto_48

    :cond_47
    const/4 v1, 0x0

    :goto_48
    packed-switch v1, :pswitch_data_6a

    const-string v1, "Ignoring change on "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AttentionDetector"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :pswitch_57  #0x0, 0x1, 0x2
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->readValuesFromDeviceConfig()V

    :cond_5a
    return-void

    nop

    :sswitch_data_5c
    .sparse-switch
        -0x784b213c -> :sswitch_3d
        -0x1e7d483f -> :sswitch_31
        0x18e8ab07 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_57  #00000000
        :pswitch_57  #00000001
        :pswitch_57  #00000002
    .end packed-switch
.end method
