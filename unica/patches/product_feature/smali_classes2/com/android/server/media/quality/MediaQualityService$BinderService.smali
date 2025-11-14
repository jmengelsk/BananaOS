.class public final Lcom/android/server/media/quality/MediaQualityService$BinderService;
.super Landroid/media/quality/IMediaQualityManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Landroid/media/quality/IMediaQualityManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPictureProfile(Landroid/media/quality/PictureProfile;I)V
    .registers 4

    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p2, p2, Lcom/android/server/media/quality/MediaQualityService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Landroid/media/quality/PictureProfile;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final createSoundProfile(Landroid/media/quality/SoundProfile;I)V
    .registers 4

    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p2, p2, Lcom/android/server/media/quality/MediaQualityService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Landroid/media/quality/SoundProfile;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getAvailablePictureProfiles(ZI)Ljava/util/List;
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPictureProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getAvailableSoundProfiles(ZI)Ljava/util/List;
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getSoundProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getDefaultPictureProfileHandleValue(I)J
    .registers 4

    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p1, p1, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPackageDefaultPictureProfileHandleMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    goto :goto_1b

    :catchall_18
    move-exception p0

    goto :goto_26

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    if-eqz p0, :cond_22

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_24

    :cond_22
    const-wide/16 v0, -0x1

    :goto_24
    monitor-exit p1

    return-wide v0

    :goto_26
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_18

    throw p0
.end method

.method public final getPackageOfCallingUid()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1e

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    aget-object p0, p0, v0

    return-object p0

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getParameterCapabilities(Ljava/util/List;I)Ljava/util/List;
    .registers 11

    const/4 p2, 0x1

    sget-object v0, Lcom/android/server/media/quality/MediaQualityUtils;->SOUND_PROFILE_HANDLE_NONE:Landroid/media/quality/SoundProfileHandle;

    const/4 v0, 0x0

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto/16 :goto_6d1

    :cond_9
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "brightness"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    const-string/jumbo v3, "contrast"

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    const-string/jumbo v3, "sharpness"

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    const-string/jumbo v3, "saturation"

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_62

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_62
    const-string/jumbo v4, "hue"

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_73

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_73
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_80
    const-string/jumbo v2, "color_tuner_brightness"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_91
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9e
    const-string/jumbo v2, "color_tuner_saturation"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_af
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bc
    const-string/jumbo v2, "color_tuner_hue"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cd
    const-string/jumbo v2, "color_tuner_red_offset"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_df
    const-string/jumbo v2, "color_tuner_green_offset"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f1
    const-string/jumbo v2, "color_tuner_blue_offset"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_103
    const-string/jumbo v2, "color_tuner_red_gain"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_115
    const-string/jumbo v2, "color_tuner_green_gain"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_127

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_127
    const-string/jumbo v2, "color_tuner_blue_gain"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_139

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_139
    const-string/jumbo v2, "noise_reduction"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14b

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14b
    const-string/jumbo v2, "mpeg_noise_reduction"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15d

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15d
    const-string/jumbo v2, "flesh_tone"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16f

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16f
    const-string/jumbo v2, "decontour"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_181

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_181
    const-string/jumbo v2, "dynamic_luma_control"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_193

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_193
    const-string/jumbo v2, "film_mode"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a5

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a5
    const-string/jumbo v2, "blue_stretch"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b7

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b7
    const-string/jumbo v2, "color_tune"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c9

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c9
    const-string/jumbo v2, "color_temperature"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1db

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1db
    const-string/jumbo v2, "global_dimming"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ed

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1ed
    const-string/jumbo v2, "auto_picture_quality_enabled"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ff

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1ff
    const-string/jumbo v2, "auto_super_resolution_enabled"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_211

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_211
    const-string/jumbo v2, "level_range"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_223

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_223
    const-string/jumbo v2, "gamut_mapping"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_235

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_235
    const-string/jumbo v2, "pc_mode"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_247

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_247
    const-string/jumbo v2, "low_latency"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_259

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_259
    const-string/jumbo v2, "vrr"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26b

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26b
    const-string/jumbo v2, "cvrr"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27d

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27d
    const-string/jumbo v2, "hdmi_rgb_range"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28f

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28f
    const-string/jumbo v2, "color_space"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a1

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a1
    const-string/jumbo v2, "panel_init_max_lumince_valid"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b3

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b3
    const-string/jumbo v2, "gamma"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c5

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c5
    const-string/jumbo v2, "color_temperature_red_offset"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d7

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d7
    const-string/jumbo v2, "color_temperature_green_offset"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e9

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e9
    const-string/jumbo v2, "color_temperature_blue_offset"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2fb

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2fb
    const-string/jumbo v2, "eleven_point_red"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30d

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30d
    const-string/jumbo v2, "eleven_point_green"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31f

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31f
    const-string/jumbo v2, "eleven_point_blue"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_331

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_331
    const-string/jumbo v2, "low_blue_light"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_343

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_343
    const-string/jumbo v2, "ld_mode"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_355

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_355
    const-string/jumbo v2, "osd_red_gain"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_367

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_367
    const-string/jumbo v2, "osd_green_gain"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_379

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_379
    const-string/jumbo v2, "osd_blue_gain"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38b

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38b
    const-string/jumbo v2, "osd_red_offset"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39d

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39d
    const-string/jumbo v2, "osd_green_offset"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3af

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3af
    const-string/jumbo v2, "osd_blue_offset"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c1
    const-string/jumbo v2, "osd_hue"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d3

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d3
    const-string/jumbo v2, "osd_saturation"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e5

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e5
    const-string/jumbo v2, "osd_contrast"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f7

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f7
    const-string/jumbo v2, "color_tuner_switch"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_409

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_409
    const-string/jumbo v2, "color_tuner_hue_red"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41b

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41b
    const-string/jumbo v2, "color_tuner_hue_green"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42d

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42d
    const-string/jumbo v2, "color_tuner_hue_blue"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43f

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43f
    const-string/jumbo v2, "color_tuner_hue_cyan"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_451

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_451
    const-string/jumbo v2, "color_tuner_hue_magenta"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_463

    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_463
    const-string/jumbo v2, "color_tuner_hue_yellow"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_475

    const/16 v2, 0x3f

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_475
    const-string/jumbo v2, "color_tuner_hue_flesh"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_487

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_487
    const-string/jumbo v2, "color_tuner_saturation_red"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_499

    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_499
    const-string/jumbo v2, "color_tuner_saturation_green"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4ab

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4ab
    const-string/jumbo v2, "color_tuner_saturation_blue"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4bd

    const/16 v2, 0x43

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4bd
    const-string/jumbo v2, "color_tuner_saturation_cyan"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4cf

    const/16 v2, 0x44

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4cf
    const-string/jumbo v2, "color_tuner_saturation_magenta"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e1

    const/16 v2, 0x45

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4e1
    const-string/jumbo v2, "color_tuner_saturation_yellow"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f3

    const/16 v2, 0x46

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f3
    const-string/jumbo v2, "color_tuner_saturation_flesh"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_505

    const/16 v2, 0x47

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_505
    const-string/jumbo v2, "color_tuner_luminance_red"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_517

    const/16 v2, 0x48

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_517
    const-string/jumbo v2, "color_tuner_luminance_green"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_529

    const/16 v2, 0x49

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_529
    const-string/jumbo v2, "color_tuner_luminance_blue"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53b

    const/16 v2, 0x4a

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53b
    const-string/jumbo v2, "color_tuner_luminance_cyan"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54d

    const/16 v2, 0x4b

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54d
    const-string/jumbo v2, "color_tuner_luminance_magenta"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55f

    const/16 v2, 0x4c

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55f
    const-string/jumbo v2, "color_tuner_luminance_yellow"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_571

    const/16 v2, 0x4d

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_571
    const-string/jumbo v2, "color_tuner_luminance_flesh"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_583

    const/16 v2, 0x4e

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_583
    const-string/jumbo v2, "balance"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_595

    const/16 v2, 0x4f

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_595
    const-string/jumbo v2, "bass"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a7

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5a7
    const-string/jumbo v2, "treble"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b9

    const/16 v2, 0x51

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b9
    const-string/jumbo v2, "surround_sound"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5cb

    const/16 v2, 0x52

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5cb
    const-string/jumbo v2, "equalizer_detail"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5dd

    const/16 v2, 0x53

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5dd
    const-string/jumbo v2, "speakers"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5ef

    const/16 v2, 0x54

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5ef
    const-string/jumbo v2, "speakers_delay_millis"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_601

    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_601
    const-string/jumbo v2, "earc"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_613

    const/16 v2, 0x56

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_613
    const-string/jumbo v2, "auto_volume_control"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_625

    const/16 v2, 0x57

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_625
    const-string/jumbo v2, "down_mix_mode"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_637

    const/16 v2, 0x58

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_637
    const-string/jumbo v2, "dts_drc"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_649

    const/16 v2, 0x59

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_649
    const-string/jumbo v2, "dolby_audio_processing"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65b

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_65b
    const-string/jumbo v2, "dialogue_enhancer"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66d

    const/16 v2, 0x5b

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_66d
    const-string/jumbo v2, "dts_virtual_x"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67f

    const/16 v2, 0x5c

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_67f
    const-string/jumbo v2, "digital_output_delay_millis"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_691

    const/16 v2, 0x5e

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_691
    const-string/jumbo v2, "digital_output_mode"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a3

    const/16 v2, 0x5d

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6a3
    const-string/jumbo v2, "sound_style"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b5

    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6b5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [B

    move v2, v0

    :goto_6bc
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6d0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/2addr v2, p2

    goto :goto_6bc

    :cond_6d0
    move-object p1, v1

    :goto_6d1
    array-length v1, p1

    new-array v2, v1, [Landroid/hardware/tv/mediaquality/ParamCapability;

    :try_start_6d4
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    check-cast p0, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {p0, p1, v2}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->getParamCaps([B[Landroid/hardware/tv/mediaquality/ParamCapability;)V
    :try_end_6dd
    .catch Landroid/os/RemoteException; {:try_start_6d4 .. :try_end_6dd} :catch_6de

    goto :goto_6e7

    :catch_6de
    move-exception p0

    const-string/jumbo p1, "MediaQualityService"

    const-string v3, "Failed to get parameter capabilities"

    invoke-static {p1, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6e7
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    move p1, v0

    :goto_6ed
    if-ge p1, v1, :cond_714

    aget-object v3, v2, p1

    if-eqz v3, :cond_712

    iget-byte v4, v3, Landroid/hardware/tv/mediaquality/ParamCapability;->name:B

    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityUtils;->getParameterName(B)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v3, Landroid/hardware/tv/mediaquality/ParamCapability;->isSupported:Z

    iget-object v6, v3, Landroid/hardware/tv/mediaquality/ParamCapability;->defaultValue:Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    if-nez v6, :cond_701

    move v6, v0

    goto :goto_704

    :cond_701
    iget v6, v6, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tag:I

    add-int/2addr v6, p2

    :goto_704
    iget-object v3, v3, Landroid/hardware/tv/mediaquality/ParamCapability;->range:Landroid/hardware/tv/mediaquality/ParameterRange;

    invoke-static {v6, v3}, Lcom/android/server/media/quality/MediaQualityUtils;->convertToCaps(ILandroid/hardware/tv/mediaquality/ParameterRange;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v7, Landroid/media/quality/ParameterCapability;

    invoke-direct {v7, v4, v5, v6, v3}, Landroid/media/quality/ParameterCapability;-><init>(Ljava/lang/String;ZILandroid/os/Bundle;)V

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_712
    add-int/2addr p1, p2

    goto :goto_6ed

    :cond_714
    return-object p0
.end method

.method public final getPictureProfile(ILjava/lang/String;ZI)Landroid/media/quality/PictureProfile;
    .registers 10

    const-string/jumbo p4, "_type = ? AND _name = ? AND _package = ?"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, p2, v1}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v1, v1, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_14
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v3, v2, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mMediaQualityDbHelper:Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v2, "picture_quality"

    invoke-static {p3}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, v2, p3, p4, v0}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->getCursorAfterQuerying(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_31

    :try_start_25
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result p4
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_5f

    const/4 v0, 0x0

    if-nez p4, :cond_33

    :try_start_2c
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :goto_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_31

    return-object v0

    :catchall_31
    move-exception p0

    goto :goto_7c

    :cond_33
    const/4 v2, 0x1

    if-le p4, v2, :cond_61

    :try_start_36
    const-string/jumbo v2, "MediaQualityService"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%d entries found for type=%d and name=%s in %s. Should only ever be 0 or 1."

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQualityDbHelper:Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo p0, "picture_quality"

    filled-new-array {v4, p4, p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_36 .. :try_end_5b} :catchall_5f

    :try_start_5b
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_31

    goto :goto_2f

    :catchall_5f
    move-exception p0

    goto :goto_71

    :cond_61
    :try_start_61
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-static {p3, p0}, Lcom/android/server/media/quality/MediaQualityUtils;->convertCursorToPictureProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/PictureProfile;

    move-result-object p0
    :try_end_6c
    .catchall {:try_start_61 .. :try_end_6c} :catchall_5f

    :try_start_6c
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_31

    return-object p0

    :goto_71
    if-eqz p3, :cond_7b

    :try_start_73
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_77

    goto :goto_7b

    :catchall_77
    move-exception p1

    :try_start_78
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7b
    :goto_7b
    throw p0

    :goto_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_31

    throw p0
.end method

.method public final getPictureProfileAllowList(I)Ljava/util/List;
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p1, p1, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/String;III)V

    :cond_17
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileSharedPreference:Landroid/content/SharedPreferences;

    const-string/jumbo p1, "allowlist"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_34

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_34
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getPictureProfileForTvInput(Ljava/lang/String;I)J
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_17

    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p2, p2, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/String;III)V

    :cond_17
    const-string/jumbo p2, "_id"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "_type = ? AND _name = ? AND _input_id = ?"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "default"

    filled-new-array {v0, v2, p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_31
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQualityDbHelper:Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo p0, "picture_quality"

    invoke-virtual {v2, p0, p2, v1, p1}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->getCursorAfterQuerying(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_4b

    :try_start_3e
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_5f

    const-wide/16 v1, -0x1

    if-nez p1, :cond_4d

    :try_start_46
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_4b

    return-wide v1

    :catchall_4b
    move-exception p0

    goto :goto_70

    :cond_4d
    :try_start_4d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo p1, "_id"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_61

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_5e
    .catchall {:try_start_4d .. :try_end_5e} :catchall_5f

    goto :goto_61

    :catchall_5f
    move-exception p1

    goto :goto_65

    :cond_61
    :goto_61
    :try_start_61
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_4b

    goto :goto_49

    :goto_65
    if-eqz p0, :cond_6f

    :try_start_67
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception p0

    :try_start_6c
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6f
    :goto_6f
    throw p1

    :goto_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_4b

    throw p0
.end method

.method public final getPictureProfileHandle([Ljava/lang/String;I)Ljava/util/List;
    .registers 10

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    array-length v1, p1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_32

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v4, v4, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-virtual {v4, v3}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_2b

    new-instance v4, Landroid/media/quality/PictureProfileHandle;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Landroid/media/quality/PictureProfileHandle;-><init>(J)V

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :catchall_29
    move-exception p0

    goto :goto_34

    :cond_2b
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_32
    monitor-exit v0

    return-object p2

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_29

    throw p0
.end method

.method public final getPictureProfileHandleValue(Ljava/lang/String;I)J
    .registers 3

    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p2, p2, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_5
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    goto :goto_1a

    :catchall_16
    move-exception p0

    goto :goto_1c

    :cond_18
    const-wide/16 p0, -0x1

    :goto_1a
    monitor-exit p2

    return-wide p0

    :goto_1c
    monitor-exit p2
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_16

    throw p0
.end method

.method public final getPictureProfilePackageNames(I)Ljava/util/List;
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p1, p1, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/String;III)V

    :cond_17
    const-string/jumbo p1, "_package"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v1, v1, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_23
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {p0, p1, v0, v0}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mgetPictureProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda4;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v1

    return-object p0

    :catchall_49
    move-exception p0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_23 .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public final getPictureProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result p3

    if-nez p3, :cond_17

    iget-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p3, p3, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p3, v2, v3, v0, v1}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/String;III)V

    :cond_17
    iget-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p3, p3, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_1c
    const-string/jumbo v0, "_package = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, v0, p1}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mgetPictureProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    monitor-exit p3

    return-object p0

    :catchall_31
    move-exception p0

    monitor-exit p3
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final getSoundProfile(ILjava/lang/String;ZI)Landroid/media/quality/SoundProfile;
    .registers 9

    const-string/jumbo p4, "_type = ? AND _name = ? AND _package = ?"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_14
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v1, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    iget-object v1, v1, Lcom/android/server/media/quality/MediaQualityService;->mMediaQualityDbHelper:Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v1, "sound_quality"

    invoke-static {p3}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, v1, p3, p4, p1}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->getCursorAfterQuerying(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_31

    :try_start_25
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p3
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_5b

    const/4 p4, 0x0

    if-nez p3, :cond_33

    :try_start_2c
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_31

    return-object p4

    :catchall_31
    move-exception p0

    goto :goto_78

    :cond_33
    const/4 v1, 0x1

    if-le p3, v1, :cond_5d

    :try_start_36
    const-string/jumbo v1, "MediaQualityService"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%d entries found for name=%s in %s. Should only ever be 0 or 1."

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQualityDbHelper:Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo p0, "sound_quality"

    filled-new-array {v3, p3, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_36 .. :try_end_57} :catchall_5b

    :try_start_57
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_31

    goto :goto_2f

    :catchall_5b
    move-exception p0

    goto :goto_6d

    :cond_5d
    :try_start_5d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-static {p1, p0}, Lcom/android/server/media/quality/MediaQualityUtils;->convertCursorToSoundProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/SoundProfile;

    move-result-object p0
    :try_end_68
    .catchall {:try_start_5d .. :try_end_68} :catchall_5b

    :try_start_68
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_31

    return-object p0

    :goto_6d
    if-eqz p1, :cond_77

    :try_start_6f
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_77

    :catchall_73
    move-exception p1

    :try_start_74
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_77
    :goto_77
    throw p0

    :goto_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_31

    throw p0
.end method

.method public final getSoundProfileAllowList(I)Ljava/util/List;
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalSoundQualityServicePermission()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p1, p1, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/String;III)V

    :cond_17
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileSharedPreference:Landroid/content/SharedPreferences;

    const-string/jumbo p1, "allowlist"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_34

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_34
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getSoundProfileHandle([Ljava/lang/String;I)Ljava/util/List;
    .registers 8

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    array-length v1, p1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_2b

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v4, v4, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-virtual {v4, v3}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_24

    sget-object v3, Lcom/android/server/media/quality/MediaQualityUtils;->SOUND_PROFILE_HANDLE_NONE:Landroid/media/quality/SoundProfileHandle;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :catchall_22
    move-exception p0

    goto :goto_2d

    :cond_24
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2b
    monitor-exit v0

    return-object p2

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_22

    throw p0
.end method

.method public final getSoundProfilePackageNames(I)Ljava/util/List;
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalSoundQualityServicePermission()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p1, p1, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/String;III)V

    :cond_17
    const-string/jumbo p1, "_name"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v1, v1, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_23
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {p0, p1, v0, v0}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mgetSoundProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda4;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v1

    return-object p0

    :catchall_49
    move-exception p0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_23 .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public final getSoundProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalSoundQualityServicePermission()Z

    move-result p3

    if-nez p3, :cond_17

    iget-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p3, p3, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p3, v2, v3, v0, v1}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/String;III)V

    :cond_17
    iget-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p3, p3, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_1c
    const-string/jumbo v0, "_package = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, v0, p1}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mgetSoundProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    monitor-exit p3

    return-object p0

    :catchall_31
    move-exception p0

    monitor-exit p3
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final hasGlobalPictureQualityServicePermission()Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.MANAGE_GLOBAL_PICTURE_QUALITY_SERVICE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final hasGlobalSoundQualityServicePermission()Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.MANAGE_GLOBAL_SOUND_QUALITY_SERVICE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final isAmbientBacklightEnabled(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final isAutoPictureQualityEnabled(I)Z
    .registers 4

    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p1, p1, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    if-eqz v0, :cond_2a

    check-cast v0, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {v0}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->isAutoPqSupported()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    check-cast p0, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->getAutoPqEnabled()Z

    move-result p0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1d} :catch_21
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1f

    :try_start_1d
    monitor-exit p1

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_2d

    :catch_21
    move-exception p0

    const-string/jumbo v0, "MediaQualityService"

    const-string v1, "Failed to get auto picture quality"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_1f

    throw p0
.end method

.method public final isAutoSoundQualityEnabled(I)Z
    .registers 4

    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p1, p1, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    if-eqz v0, :cond_2a

    check-cast v0, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {v0}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->isAutoAqSupported()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    check-cast p0, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->getAutoAqEnabled()Z

    move-result p0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1d} :catch_21
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1f

    :try_start_1d
    monitor-exit p1

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_2d

    :catch_21
    move-exception p0

    const-string/jumbo v0, "MediaQualityService"

    const-string v1, "Failed to get auto sound quality"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_1f

    throw p0
.end method

.method public final isSuperResolutionEnabled(I)Z
    .registers 4

    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p1, p1, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    if-eqz v0, :cond_2a

    check-cast v0, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {v0}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->isAutoSrSupported()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    check-cast p0, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->getAutoSrEnabled()Z

    move-result p0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1d} :catch_21
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1f

    :try_start_1d
    monitor-exit p1

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_2d

    :catch_21
    move-exception p0

    const-string/jumbo v0, "MediaQualityService"

    const-string v1, "Failed to get super resolution"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_1f

    throw p0
.end method

.method public final isSupported(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final notifyPictureProfileHandleSelection(JI)V
    .registers 5

    iget-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p3, p3, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;

    move-result-object p3

    if-eqz p3, :cond_1d

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mHalNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnPictureProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    :cond_1d
    return-void
.end method

.method public final registerActiveProcessingPictureListener(Landroid/media/quality/IActiveProcessingPictureListener;)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/media/quality/MediaQualityService;->getOrCreateUserState(I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    iget-object p0, v2, Lcom/android/server/media/quality/MediaQualityService$UserState;->mActiveProcessingPictureListenerMap:Ljava/util/Map;

    new-instance v2, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput v1, v2, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;->mUid:I

    iput v0, v2, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;->mPid:I

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final registerAmbientBacklightCallback(Landroid/media/quality/IAmbientBacklightCallback;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_COLOR_ZONES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v1, v1, Lcom/android/server/media/quality/MediaQualityService;->mCallbackRecords:Ljava/util/Map;

    monitor-enter v1

    :try_start_13
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mCallbackRecords:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;

    if-eqz v2, :cond_5a

    iget-object v3, v2, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    invoke-interface {v3}, Landroid/media/quality/IAmbientBacklightCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/quality/IAmbientBacklightCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string/jumbo p0, "MediaQualityService"

    const-string p1, "AmbientBacklight Callback already registered"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_13 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception p0

    goto :goto_6a

    :cond_3d
    :try_start_3d
    iget-object v3, v2, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    invoke-interface {v3}, Landroid/media/quality/IAmbientBacklightCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_47
    .catch Ljava/util/NoSuchElementException; {:try_start_3d .. :try_end_47} :catch_48
    .catchall {:try_start_3d .. :try_end_47} :catchall_3b

    goto :goto_51

    :catch_48
    move-exception v2

    :try_start_49
    const-string/jumbo v3, "MediaQualityService"

    const-string v4, "Failed to unlink to death"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_51
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mCallbackRecords:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService;->mCallbackRecords:Ljava/util/Map;

    new-instance v3, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;-><init>(Lcom/android/server/media/quality/MediaQualityService;Ljava/lang/String;Landroid/media/quality/IAmbientBacklightCallback;)V

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :goto_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_49 .. :try_end_6b} :catchall_3b

    throw p0
.end method

.method public final registerPictureProfileCallback(Landroid/media/quality/IPictureProfileCallback;)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/media/quality/MediaQualityService;->getOrCreateUserState(I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mPictureProfileCallbackPidUidMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final registerSoundProfileCallback(Landroid/media/quality/ISoundProfileCallback;)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/media/quality/MediaQualityService;->getOrCreateUserState(I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mSoundProfileCallbackPidUidMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removePictureProfile(Ljava/lang/String;I)V
    .registers 5

    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p2, p2, Lcom/android/server/media/quality/MediaQualityService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final removeSoundProfile(Ljava/lang/String;I)V
    .registers 5

    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p2, p2, Lcom/android/server/media/quality/MediaQualityService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setAmbientBacklightEnabled(ZI)V
    .registers 5

    const-string/jumbo p2, "MediaQualityService"

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_COLOR_ZONES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    :try_start_d
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    if-eqz p0, :cond_26

    check-cast p0, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->setAmbientBacklightDetectionEnabled(Z)V
    :try_end_18
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_18} :catch_20
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    const-string p1, "Failed to set ambient backlight enabled"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    :catch_20
    const-string/jumbo p0, "The current device is not supported"

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    return-void
.end method

.method public final setAmbientBacklightSettings(Landroid/media/quality/AmbientBacklightSettings;I)V
    .registers 4

    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p2, p2, Lcom/android/server/media/quality/MediaQualityService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.READ_COLOR_ZONES"

    invoke-virtual {p2, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    :try_start_a
    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p2, p2, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    if-eqz p2, :cond_79

    new-instance p2, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;

    invoke-direct {p2}, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p2, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->uid:I

    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->getSource()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p2, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->source:B

    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->getMaxFps()I

    move-result v0

    iput v0, p2, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->maxFramerate:I

    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->getColorFormat()I

    move-result v0

    int-to-byte v0, v0

    iput v0, p2, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->colorFormat:I

    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->getHorizontalZonesCount()I

    move-result v0

    iput v0, p2, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->hZonesNumber:I

    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->getVerticalZonesCount()I

    move-result v0

    iput v0, p2, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->vZonesNumber:I

    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->isLetterboxOmitted()Z

    move-result v0

    iput-boolean v0, p2, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->hasLetterbox:Z

    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->getThreshold()I

    move-result p1

    iput p1, p2, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->colorThreshold:I

    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p1, p1, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    check-cast p1, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {p1, p2}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->setAmbientBacklightDetector(Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;)V

    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p1, p1, Lcom/android/server/media/quality/MediaQualityService;->mHalAmbientBacklightCallback:Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object p0

    iget-object p2, p1, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_5b} :catch_70

    :try_start_5b
    iget-object v0, p1, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mAmbientBacklightClientPackageName:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    monitor-exit p2

    return-void

    :catchall_65
    move-exception p0

    goto :goto_6e

    :cond_67
    invoke-virtual {p1}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->handleAmbientBacklightInterrupted()V

    iput-object p0, p1, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mAmbientBacklightClientPackageName:Ljava/lang/String;

    monitor-exit p2

    return-void

    :goto_6e
    monitor-exit p2
    :try_end_6f
    .catchall {:try_start_5b .. :try_end_6f} :catchall_65

    :try_start_6f
    throw p0
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_70} :catch_70

    :catch_70
    move-exception p0

    const-string/jumbo p1, "MediaQualityService"

    const-string p2, "Failed to set ambient backlight settings"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_79
    return-void
.end method

.method public final setAutoPictureQualityEnabled(ZI)V
    .registers 5

    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p2, p2, Lcom/android/server/media/quality/MediaQualityService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;ZI)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setAutoSoundQualityEnabled(ZI)V
    .registers 5

    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p2, p2, Lcom/android/server/media/quality/MediaQualityService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;ZI)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setDefaultPictureProfile(Ljava/lang/String;I)Z
    .registers 9

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_16

    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p2, p2, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {p2, p1, v0, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/String;III)V

    :cond_16
    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p2, p2, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-virtual {p2, p1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    const/4 p2, 0x0

    if-nez p1, :cond_24

    goto :goto_7d

    :cond_24
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v1, v1, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {v1, p1}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v1

    :try_start_30
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    if-eqz v2, :cond_7d

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameters;

    invoke-direct {v2}, Landroid/hardware/tv/mediaquality/PictureParameters;-><init>()V

    const-string/jumbo v3, "_id"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityUtils;->convertPersistableBundleToPictureParameterList(Landroid/os/PersistableBundle;)[Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    new-instance v4, Landroid/hardware/audio/effect/DefaultExtension;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v4, Landroid/hardware/audio/effect/DefaultExtension;->bytes:[B

    iget-object v1, v2, Landroid/hardware/tv/mediaquality/PictureParameters;->vendorPictureParameters:Landroid/os/ParcelableHolder;

    invoke-virtual {v1, v4}, Landroid/os/ParcelableHolder;->setParcelable(Landroid/os/Parcelable;)V

    iput-object p1, v2, Landroid/hardware/tv/mediaquality/PictureParameters;->pictureParameters:[Landroid/hardware/tv/mediaquality/PictureParameter;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    check-cast p0, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {p0, v2}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->sendDefaultPictureParameters(Landroid/hardware/tv/mediaquality/PictureParameters;)V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_73} :catch_74

    return v0

    :catch_74
    move-exception p0

    const-string/jumbo p1, "MediaQualityService"

    const-string v0, "Failed to set default picture profile"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7d
    :goto_7d
    return p2
.end method

.method public final setDefaultSoundProfile(Ljava/lang/String;I)Z
    .registers 9

    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalSoundQualityServicePermission()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_16

    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p2, p2, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {p2, p1, v0, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/String;III)V

    :cond_16
    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p2, p2, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-virtual {p2, p1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    const/4 p2, 0x0

    if-nez p1, :cond_24

    goto :goto_7a

    :cond_24
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v1, v1, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {v1, p1}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mgetSoundProfile(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;)Landroid/media/quality/SoundProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/quality/SoundProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v1

    :try_start_30
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    if-eqz v2, :cond_7a

    new-instance v2, Landroid/hardware/tv/mediaquality/SoundParameters;

    invoke-direct {v2}, Landroid/hardware/tv/mediaquality/SoundParameters;-><init>()V

    const-string/jumbo v3, "_id"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityUtils;->convertPersistableBundleToSoundParameterList(Landroid/os/PersistableBundle;)[Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    new-instance v3, Landroid/hardware/audio/effect/DefaultExtension;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v3, Landroid/hardware/audio/effect/DefaultExtension;->bytes:[B

    iget-object v1, v2, Landroid/hardware/tv/mediaquality/SoundParameters;->vendorSoundParameters:Landroid/os/ParcelableHolder;

    invoke-virtual {v1, v3}, Landroid/os/ParcelableHolder;->setParcelable(Landroid/os/Parcelable;)V

    iput-object p1, v2, Landroid/hardware/tv/mediaquality/SoundParameters;->soundParameters:[Landroid/hardware/tv/mediaquality/SoundParameter;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    check-cast p0, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {p0, v2}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->sendDefaultSoundParameters(Landroid/hardware/tv/mediaquality/SoundParameters;)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_70} :catch_71

    return v0

    :catch_71
    move-exception p0

    const-string/jumbo p1, "MediaQualityService"

    const-string v0, "Failed to set default sound profile"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7a
    :goto_7a
    return p2
.end method

.method public final setPictureProfileAllowList(Ljava/util/List;I)V
    .registers 5

    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p2, p2, Lcom/android/server/media/quality/MediaQualityService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/util/List;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setSoundProfileAllowList(Ljava/util/List;I)V
    .registers 5

    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p2, p2, Lcom/android/server/media/quality/MediaQualityService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/util/List;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setSuperResolutionEnabled(ZI)V
    .registers 5

    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p2, p2, Lcom/android/server/media/quality/MediaQualityService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;ZI)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updatePictureProfile(Ljava/lang/String;Landroid/media/quality/PictureProfile;I)V
    .registers 5

    iget-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p3, p3, Lcom/android/server/media/quality/MediaQualityService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateSoundProfile(Ljava/lang/String;Landroid/media/quality/SoundProfile;I)V
    .registers 5

    iget-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p3, p3, Lcom/android/server/media/quality/MediaQualityService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
