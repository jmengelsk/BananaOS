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
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->mContext:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/timedetector/ServerFlags;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->mContext:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->get()[I

    move-result-object p0

    return-object p0
.end method

.method public final get()[I
    .locals 13

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->$r8$classId:I

    packed-switch v6, :pswitch_data_0

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

    if-nez v7, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v6

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v7, "_[]_"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-array v6, v5, [Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    :goto_0
    invoke-virtual {v6, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v6, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->mContext:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10700a3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    :goto_1
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->mLastPriorityStrings:[Ljava/lang/String;

    invoke-static {v7, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->mLastPriorityInts:[I

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_2
    if-eqz v6, :cond_b

    array-length v7, v6

    new-array v8, v7, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v5

    :goto_2
    if-ge v9, v7, :cond_a

    :try_start_1
    aget-object v10, v6, v9

    if-eqz v10, :cond_3

    move v11, v4

    goto :goto_3

    :cond_3
    move v11, v5

    :goto_3
    invoke-static {v11}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    move v11, v4

    goto :goto_4

    :cond_4
    move v11, v5

    :goto_4
    invoke-static {v11}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v11, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    const-string/jumbo v12, "network"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_5

    :cond_5
    move v11, v0

    goto :goto_5

    :sswitch_1
    const-string/jumbo v12, "telephony"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_5

    :cond_6
    move v11, v1

    goto :goto_5

    :sswitch_2
    const-string/jumbo v12, "gnss"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_5

    :cond_7
    move v11, v2

    goto :goto_5

    :sswitch_3
    const-string/jumbo v12, "manual"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_5

    :cond_8
    move v11, v4

    goto :goto_5

    :sswitch_4
    const-string/jumbo v12, "external"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    goto :goto_5

    :cond_9
    move v11, v5

    :goto_5
    packed-switch v11, :pswitch_data_1

    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "originString="

    invoke-virtual {v1, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v10, v1

    goto :goto_6

    :pswitch_2
    move v10, v4

    goto :goto_6

    :pswitch_3
    move v10, v0

    goto :goto_6

    :pswitch_4
    move v10, v2

    goto :goto_6

    :pswitch_5
    const/4 v10, 0x5

    :goto_6
    aput v10, v8, v9
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v9, v4

    goto :goto_2

    :cond_a
    move-object v3, v8

    :catch_0
    :cond_b
    :try_start_3
    iput-object v6, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->mLastPriorityStrings:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->mLastPriorityInts:[I

    monitor-exit p0

    return-object v3

    :goto_7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x6c869c35 -> :sswitch_4
        -0x4075183a -> :sswitch_3
        0x307d87 -> :sswitch_2
        0x2eaeb418 -> :sswitch_1
        0x6de15a2e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
