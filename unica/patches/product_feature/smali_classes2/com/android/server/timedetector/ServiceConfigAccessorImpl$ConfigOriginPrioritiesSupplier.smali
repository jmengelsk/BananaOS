.class public final Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mContext:Ljava/lang/Object;

.field public mLastPriorityInts:[I

.field public mLastPriorityStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->mContext:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/timedetector/ServerFlags;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->mContext:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->get()[I

    move-result-object p0

    return-object p0
.end method

.method public final get()[I
    .registers 14

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->$r8$classId:I

    packed-switch v6, :pswitch_data_fc

    iget-object v6, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->mContext:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/timedetector/ServerFlags;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v6, "system_time"

    const-string/jumbo v7, "time_detector_origin_priorities_override"

    invoke-static {v6, v7}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v7

    if-nez v7, :cond_2b

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v6

    goto :goto_4b

    :cond_2b
    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v7, "_[]_"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    new-array v6, v5, [Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    goto :goto_4b

    :cond_41
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    :goto_4b
    invoke-virtual {v6, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_61

    :pswitch_52  #0x0
    iget-object v6, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->mContext:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10700a3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    :goto_61
    monitor-enter p0

    :try_start_62
    iget-object v7, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->mLastPriorityStrings:[Ljava/lang/String;

    invoke-static {v7, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_71

    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->mLastPriorityInts:[I

    monitor-exit p0

    return-object v0

    :catchall_6e
    move-exception v0

    goto/16 :goto_fa

    :cond_71
    if-eqz v6, :cond_f4

    array-length v7, v6

    new-array v8, v7, [I
    :try_end_76
    .catchall {:try_start_62 .. :try_end_76} :catchall_6e

    move v9, v5

    :goto_77
    if-ge v9, v7, :cond_f3

    :try_start_79
    aget-object v10, v6, v9

    if-eqz v10, :cond_7f

    move v11, v4

    goto :goto_80

    :cond_7f
    move v11, v5

    :goto_80
    invoke-static {v11}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8b

    move v11, v4

    goto :goto_8c

    :cond_8b
    move v11, v5

    :goto_8c
    invoke-static {v11}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_92
    .catch Ljava/lang/IllegalArgumentException; {:try_start_79 .. :try_end_92} :catch_f4
    .catchall {:try_start_79 .. :try_end_92} :catchall_6e

    const/4 v11, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_102

    goto :goto_d6

    :sswitch_9b
    const-string/jumbo v12, "network"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a5

    goto :goto_d6

    :cond_a5
    move v11, v0

    goto :goto_d6

    :sswitch_a7
    const-string/jumbo v12, "telephony"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b1

    goto :goto_d6

    :cond_b1
    move v11, v1

    goto :goto_d6

    :sswitch_b3
    const-string/jumbo v12, "gnss"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_bd

    goto :goto_d6

    :cond_bd
    move v11, v2

    goto :goto_d6

    :sswitch_bf
    const-string/jumbo v12, "manual"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c9

    goto :goto_d6

    :cond_c9
    move v11, v4

    goto :goto_d6

    :sswitch_cb
    const-string/jumbo v12, "external"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d5

    goto :goto_d6

    :cond_d5
    move v11, v5

    :goto_d6
    packed-switch v11, :pswitch_data_118

    :try_start_d9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "originString="

    invoke-virtual {v1, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_e6  #0x4
    move v10, v1

    goto :goto_ef

    :pswitch_e8  #0x3
    move v10, v4

    goto :goto_ef

    :pswitch_ea  #0x2
    move v10, v0

    goto :goto_ef

    :pswitch_ec  #0x1
    move v10, v2

    goto :goto_ef

    :pswitch_ee  #0x0
    const/4 v10, 0x5

    :goto_ef
    aput v10, v8, v9
    :try_end_f1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d9 .. :try_end_f1} :catch_f4
    .catchall {:try_start_d9 .. :try_end_f1} :catchall_6e

    add-int/2addr v9, v4

    goto :goto_77

    :cond_f3
    move-object v3, v8

    :catch_f4
    :cond_f4
    :try_start_f4
    iput-object v6, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->mLastPriorityStrings:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->mLastPriorityInts:[I

    monitor-exit p0

    return-object v3

    :goto_fa
    monitor-exit p0
    :try_end_fb
    .catchall {:try_start_f4 .. :try_end_fb} :catchall_6e

    throw v0

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_52  #00000000
    .end packed-switch

    :sswitch_data_102
    .sparse-switch
        -0x6c869c35 -> :sswitch_cb
        -0x4075183a -> :sswitch_bf
        0x307d87 -> :sswitch_b3
        0x2eaeb418 -> :sswitch_a7
        0x6de15a2e -> :sswitch_9b
    .end sparse-switch

    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_ee  #00000000
        :pswitch_ec  #00000001
        :pswitch_ea  #00000002
        :pswitch_e8  #00000003
        :pswitch_e6  #00000004
    .end packed-switch
.end method
