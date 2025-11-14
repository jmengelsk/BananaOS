.class public final Lcom/android/server/smartclip/SpenGarageSpecManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sInstance:Lcom/android/server/smartclip/SpenGarageSpecManager;


# instance fields
.field public final mIsBundledSpenSupported:Z

.field public final mSupportedExternalSpenFeatures:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 12

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mSupportedExternalSpenFeatures:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_GARAGE_SPEC"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string/jumbo v4, "SpenGarageSpecManager"

    if-eqz v3, :cond_0

    const-string/jumbo p0, "Spen Garage Spec is empty"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_6

    aget-object v7, v3, v6

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    const-string v7, "Incorrect Spec, strSpec : "

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    aget-object v8, v7, v1

    aget-object v7, v7, v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v9, "unbundled_spec"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "bundled"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    const-string/jumbo v8, "bundle = "

    invoke-static {v8, v7, v4}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string/jumbo v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "unbundled_spec = "

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v7, v8

    move v9, v1

    :goto_1
    if-ge v9, v7, :cond_5

    aget-object v10, v8, v9

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;->valueOf(Ljava/lang/String;)Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v11, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mSupportedExternalSpenFeatures:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/2addr v9, v0

    goto :goto_1

    :cond_5
    :goto_2
    add-int/2addr v6, v0

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/smartclip/SpenGarageSpecManager;
    .locals 2

    const-class v0, Lcom/android/server/smartclip/SpenGarageSpecManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/smartclip/SpenGarageSpecManager;->sInstance:Lcom/android/server/smartclip/SpenGarageSpecManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/smartclip/SpenGarageSpecManager;

    invoke-direct {v1}, Lcom/android/server/smartclip/SpenGarageSpecManager;-><init>()V

    sput-object v1, Lcom/android/server/smartclip/SpenGarageSpecManager;->sInstance:Lcom/android/server/smartclip/SpenGarageSpecManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/smartclip/SpenGarageSpecManager;->sInstance:Lcom/android/server/smartclip/SpenGarageSpecManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
