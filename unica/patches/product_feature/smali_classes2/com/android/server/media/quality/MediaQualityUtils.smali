.class public abstract Lcom/android/server/media/quality/MediaQualityUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final SOUND_PROFILE_HANDLE_NONE:Landroid/media/quality/SoundProfileHandle;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/media/quality/SoundProfileHandle;

    invoke-direct {v0}, Landroid/media/quality/SoundProfileHandle;-><init>()V

    sput-object v0, Lcom/android/server/media/quality/MediaQualityUtils;->SOUND_PROFILE_HANDLE_NONE:Landroid/media/quality/SoundProfileHandle;

    const-wide/16 v1, -0x2710

    iput-wide v1, v0, Landroid/media/quality/SoundProfileHandle;->id:J

    return-void
.end method

.method public static convertCursorToPictureProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/PictureProfile;
    .registers 13

    const-string/jumbo v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_14

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_15

    :cond_14
    move-object v0, v1

    :goto_15
    invoke-static {p1, v0}, Lcom/android/server/media/quality/MediaQualityUtils;->populateTempIdMap(Lcom/android/server/media/quality/BiMap;Ljava/lang/Long;)V

    invoke-virtual {p1, v0}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_2b

    sget-object p1, Landroid/media/quality/PictureProfileHandle;->NONE:Landroid/media/quality/PictureProfileHandle;

    move-object v10, p1

    goto :goto_35

    :cond_2b
    new-instance v0, Landroid/media/quality/PictureProfileHandle;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Landroid/media/quality/PictureProfileHandle;-><init>(J)V

    move-object v10, v0

    :goto_35
    new-instance v3, Landroid/media/quality/PictureProfile;

    const-string/jumbo p1, "_type"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_46

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    :goto_44
    move v5, p1

    goto :goto_48

    :cond_46
    const/4 p1, 0x0

    goto :goto_44

    :goto_48
    const-string/jumbo p1, "_name"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_57

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    goto :goto_58

    :cond_57
    move-object v6, v1

    :goto_58
    const-string/jumbo p1, "_input_id"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_67

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v7, p1

    goto :goto_68

    :cond_67
    move-object v7, v1

    :goto_68
    const-string/jumbo p1, "_package"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_77

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v8, p1

    goto :goto_78

    :cond_77
    move-object v8, v1

    :goto_78
    const-string/jumbo p1, "settings"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_85

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_85
    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityUtils;->jsonToPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v9

    invoke-direct/range {v3 .. v10}, Landroid/media/quality/PictureProfile;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/media/quality/PictureProfileHandle;)V

    return-object v3
.end method

.method public static convertCursorToSoundProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/SoundProfile;
    .registers 10

    new-instance v0, Landroid/media/quality/SoundProfile;

    const-string/jumbo v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_16

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_17

    :cond_16
    move-object v1, v2

    :goto_17
    invoke-static {p1, v1}, Lcom/android/server/media/quality/MediaQualityUtils;->populateTempIdMap(Lcom/android/server/media/quality/BiMap;Ljava/lang/Long;)V

    invoke-virtual {p1, v1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo p1, "_type"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v3, :cond_2f

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    goto :goto_30

    :cond_2f
    const/4 p1, 0x0

    :goto_30
    const-string/jumbo v4, "_name"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_3e

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3f

    :cond_3e
    move-object v4, v2

    :goto_3f
    const-string/jumbo v5, "_input_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v3, :cond_4d

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4e

    :cond_4d
    move-object v5, v2

    :goto_4e
    const-string/jumbo v6, "_package"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v3, :cond_5c

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5d

    :cond_5c
    move-object v6, v2

    :goto_5d
    const-string/jumbo v7, "settings"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v3, :cond_6a

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_6a
    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityUtils;->jsonToPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    sget-object v7, Lcom/android/server/media/quality/MediaQualityUtils;->SOUND_PROFILE_HANDLE_NONE:Landroid/media/quality/SoundProfileHandle;

    move v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Landroid/media/quality/SoundProfile;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/media/quality/SoundProfileHandle;)V

    return-object v0
.end method

.method public static convertPersistableBundleToPictureParameterList(Landroid/os/PersistableBundle;)[Landroid/hardware/tv/mediaquality/PictureParameter;
    .registers 23

    move-object/from16 v0, p0

    const-string/jumbo v1, "global_dimming"

    const-string/jumbo v2, "color_temperature"

    const-string/jumbo v3, "color_tune"

    const-string/jumbo v4, "blue_stretch"

    const-string/jumbo v5, "film_mode"

    const-string/jumbo v6, "dynamic_luma_control"

    const-string/jumbo v7, "decontour"

    const-string/jumbo v8, "flesh_tone"

    const-string/jumbo v9, "mpeg_noise_reduction"

    const-string/jumbo v10, "noise_reduction"

    const-string/jumbo v11, "color_tuner_blue_offset"

    const/16 v18, -0x1

    if-nez v0, :cond_29

    const/4 v0, 0x0

    return-object v0

    :cond_29
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v15, "brightness"

    invoke-virtual {v0, v15}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4f

    invoke-virtual {v0, v15}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v12, v12

    new-instance v13, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    move-object/from16 v20, v1

    const/4 v1, 0x0

    invoke-direct {v13, v1, v12}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v15}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    goto :goto_51

    :cond_4f
    move-object/from16 v20, v1

    :goto_51
    const-string/jumbo v1, "contrast"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6f

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    new-instance v13, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v15, 0x1

    invoke-direct {v13, v15, v12}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    goto :goto_70

    :cond_6f
    const/4 v15, 0x1

    :goto_70
    const-string/jumbo v1, "sharpness"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8e

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    new-instance v13, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v15, 0x2

    invoke-direct {v13, v15, v12}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    goto :goto_8f

    :cond_8e
    const/4 v15, 0x2

    :goto_8f
    const-string/jumbo v1, "saturation"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_ad

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    new-instance v13, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v15, 0x3

    invoke-direct {v13, v15, v12}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    goto :goto_ae

    :cond_ad
    const/4 v15, 0x3

    :goto_ae
    const-string/jumbo v1, "hue"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_cc

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    new-instance v13, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v15, 0x4

    invoke-direct {v13, v15, v12}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    goto :goto_cd

    :cond_cc
    const/4 v15, 0x4

    :goto_cd
    const-string/jumbo v1, "color_tuner_brightness"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_eb

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    new-instance v13, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v15, 0x5

    invoke-direct {v13, v15, v12}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    goto :goto_ec

    :cond_eb
    const/4 v15, 0x5

    :goto_ec
    const-string/jumbo v1, "color_tuner_saturation"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10a

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    new-instance v13, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v15, 0x6

    invoke-direct {v13, v15, v12}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    goto :goto_10b

    :cond_10a
    const/4 v15, 0x6

    :goto_10b
    const-string/jumbo v1, "color_tuner_hue"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_129

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    new-instance v13, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v15, 0x7

    invoke-direct {v13, v15, v12}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    goto :goto_12a

    :cond_129
    const/4 v15, 0x7

    :goto_12a
    const-string/jumbo v1, "color_tuner_red_offset"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_149

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    new-instance v13, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v15, 0x8

    invoke-direct {v13, v15, v12}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    goto :goto_14b

    :cond_149
    const/16 v15, 0x8

    :goto_14b
    const-string/jumbo v1, "color_tuner_green_offset"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16a

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    new-instance v13, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v15, 0x9

    invoke-direct {v13, v15, v12}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    goto :goto_16c

    :cond_16a
    const/16 v15, 0x9

    :goto_16c
    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_187

    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v12, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v13, 0xa

    invoke-direct {v12, v13, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_187
    const-string/jumbo v1, "color_tuner_red_gain"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a5

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v11

    new-instance v12, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v13, 0xb

    invoke-direct {v12, v13, v11}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_1a5
    const-string/jumbo v11, "color_tuner_green_gain"

    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1c3

    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    new-instance v13, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v15, 0xc

    invoke-direct {v13, v15, v12}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_1c3
    const-string/jumbo v12, "color_tuner_blue_gain"

    invoke-virtual {v0, v12}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1e4

    invoke-virtual {v0, v12}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v13

    new-instance v15, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v21, v11

    const/16 v11, 0xd

    invoke-direct {v15, v11, v13}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v12}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    goto :goto_1e6

    :cond_1e4
    move-object/from16 v21, v11

    :goto_1e6
    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_207

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_204

    invoke-static {v11}, Lcom/android/server/media/quality/MediaQualityUtils;->mapQualityLevel(Ljava/lang/String;)B

    move-result v11

    new-instance v13, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    const/16 v15, 0xe

    invoke-direct {v13, v15, v11}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_204
    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_207
    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_228

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_225

    invoke-static {v10}, Lcom/android/server/media/quality/MediaQualityUtils;->mapQualityLevel(Ljava/lang/String;)B

    move-result v10

    new-instance v11, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    const/16 v13, 0xf

    invoke-direct {v11, v13, v10}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_225
    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_228
    invoke-virtual {v0, v8}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_249

    invoke-virtual {v0, v8}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_246

    invoke-static {v9}, Lcom/android/server/media/quality/MediaQualityUtils;->mapQualityLevel(Ljava/lang/String;)B

    move-result v9

    new-instance v10, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    const/16 v11, 0x10

    invoke-direct {v10, v11, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_246
    invoke-virtual {v0, v8}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_249
    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_26a

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_267

    invoke-static {v8}, Lcom/android/server/media/quality/MediaQualityUtils;->mapQualityLevel(Ljava/lang/String;)B

    move-result v8

    new-instance v9, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const/16 v10, 0x11

    invoke-direct {v9, v10, v8}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_267
    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_26a
    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28b

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_288

    invoke-static {v7}, Lcom/android/server/media/quality/MediaQualityUtils;->mapQualityLevel(Ljava/lang/String;)B

    move-result v7

    new-instance v8, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const/16 v9, 0x12

    invoke-direct {v8, v9, v7}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_288
    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_28b
    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a6

    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    new-instance v7, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/16 v8, 0x13

    invoke-direct {v7, v8, v6}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_2a6
    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c1

    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    new-instance v6, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v7, 0x14

    invoke-direct {v6, v7, v5}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_2c1
    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2dc

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    new-instance v5, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v6, 0x15

    invoke-direct {v5, v6, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_2dc
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v4, "PictureParams"

    if-eqz v3, :cond_3ab

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3a8

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_d64

    :goto_2f2
    move/from16 v5, v18

    goto/16 :goto_371

    :sswitch_2f6
    const-string/jumbo v5, "color_temp_warm_hdr10plus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_300

    goto :goto_2f2

    :cond_300
    const/16 v5, 0x9

    goto/16 :goto_371

    :sswitch_304
    const-string/jumbo v5, "color_temp_standard"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30e

    goto :goto_2f2

    :cond_30e
    const/16 v5, 0x8

    goto/16 :goto_371

    :sswitch_312
    const-string/jumbo v5, "color_temp_warm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31c

    goto :goto_2f2

    :cond_31c
    const/4 v5, 0x7

    goto :goto_371

    :sswitch_31e
    const-string/jumbo v5, "color_temp_user"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_328

    goto :goto_2f2

    :cond_328
    const/4 v5, 0x6

    goto :goto_371

    :sswitch_32a
    const-string/jumbo v5, "color_temp_cool"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_334

    goto :goto_2f2

    :cond_334
    const/4 v5, 0x5

    goto :goto_371

    :sswitch_336
    const-string/jumbo v5, "color_temp_cool_hdr10plus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_340

    goto :goto_2f2

    :cond_340
    const/4 v5, 0x4

    goto :goto_371

    :sswitch_342
    const-string/jumbo v5, "color_temp_standard_hdr10plus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34c

    goto :goto_2f2

    :cond_34c
    const/4 v5, 0x3

    goto :goto_371

    :sswitch_34e
    const-string/jumbo v5, "color_temp_user_hdr10plus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_358

    goto :goto_2f2

    :cond_358
    const/4 v5, 0x2

    goto :goto_371

    :sswitch_35a
    const-string/jumbo v5, "color_temp_fmmsdr"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_364

    goto :goto_2f2

    :cond_364
    const/4 v5, 0x1

    goto :goto_371

    :sswitch_366
    const-string/jumbo v5, "color_temp_fmmhdr"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_370

    goto :goto_2f2

    :cond_370
    const/4 v5, 0x0

    :goto_371
    packed-switch v5, :pswitch_data_d8e

    const-string v5, "Invalid color_temp string: "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_37d  #0x8
    const/16 v16, 0x2

    goto :goto_39a

    :pswitch_380  #0x9
    const/16 v16, 0x7

    goto :goto_39a

    :pswitch_383  #0x7
    const/16 v16, 0x3

    goto :goto_39a

    :pswitch_386  #0x6
    const/16 v16, 0x0

    goto :goto_39a

    :pswitch_389  #0x5
    const/16 v16, 0x1

    goto :goto_39a

    :pswitch_38c  #0x4
    const/16 v16, 0x5

    goto :goto_39a

    :pswitch_38f  #0x3
    const/16 v16, 0x6

    goto :goto_39a

    :pswitch_392  #0x2
    const/16 v16, 0x4

    goto :goto_39a

    :pswitch_395  #0x1
    const/16 v16, 0x8

    goto :goto_39a

    :pswitch_398  #0x0
    const/16 v16, 0x9

    :goto_39a
    new-instance v3, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/16 v6, 0x16

    invoke-direct {v3, v6, v5}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a8
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_3ab
    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c8

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    new-instance v5, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v6, 0x17

    invoke-direct {v5, v6, v3}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_3c8
    const-string/jumbo v2, "auto_picture_quality_enabled"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3ec

    const-string/jumbo v2, "auto_picture_quality_enabled"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x18

    invoke-direct {v3, v5, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "auto_picture_quality_enabled"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_3ec
    const-string/jumbo v2, "auto_super_resolution_enabled"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_410

    const-string/jumbo v2, "auto_super_resolution_enabled"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x19

    invoke-direct {v3, v5, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "auto_super_resolution_enabled"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_410
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42b

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x25

    invoke-direct {v3, v5, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_42b
    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_448

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x26

    invoke-direct {v3, v5, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_448
    invoke-virtual {v0, v12}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_463

    invoke-virtual {v0, v12}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x27

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v12}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_463
    const-string/jumbo v1, "level_range"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c4

    const-string/jumbo v1, "level_range"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4be

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_da6

    :goto_47c
    move/from16 v2, v18

    goto :goto_49f

    :sswitch_47f
    const-string v2, "LIMITED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_488

    goto :goto_47c

    :cond_488
    const/4 v2, 0x2

    goto :goto_49f

    :sswitch_48a
    const-string v2, "FULL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_493

    goto :goto_47c

    :cond_493
    const/4 v2, 0x1

    goto :goto_49f

    :sswitch_495
    const-string v2, "AUTO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49e

    goto :goto_47c

    :cond_49e
    const/4 v2, 0x0

    :goto_49f
    packed-switch v2, :pswitch_data_db4

    const-string v2, "Invalid color_range string: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_4ab  #0x0
    const/4 v1, 0x0

    goto :goto_4b0

    :pswitch_4ad  #0x2
    const/4 v1, 0x1

    goto :goto_4b0

    :pswitch_4af  #0x1
    const/4 v1, 0x2

    :goto_4b0
    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v3, 0x1a

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4be
    const-string/jumbo v1, "level_range"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_4c4
    const-string/jumbo v1, "gamut_mapping"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e8

    const-string/jumbo v1, "gamut_mapping"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v3, 0x1b

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "gamut_mapping"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_4e8
    const-string/jumbo v1, "pc_mode"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50c

    const-string/jumbo v1, "pc_mode"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v3, 0x1c

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "pc_mode"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_50c
    const-string/jumbo v1, "low_latency"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_530

    const-string/jumbo v1, "low_latency"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v3, 0x1d

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "low_latency"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_530
    const-string/jumbo v1, "vrr"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_554

    const-string/jumbo v1, "vrr"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v3, 0x1e

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "vrr"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_554
    const-string/jumbo v1, "cvrr"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_578

    const-string/jumbo v1, "cvrr"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v3, 0x1f

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "cvrr"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_578
    const-string/jumbo v1, "hdmi_rgb_range"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d5

    const-string/jumbo v1, "hdmi_rgb_range"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5cf

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_dbe

    :goto_591
    move/from16 v1, v18

    goto :goto_5b4

    :sswitch_594
    const-string v2, "LIMITED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59d

    goto :goto_591

    :cond_59d
    const/4 v1, 0x2

    goto :goto_5b4

    :sswitch_59f
    const-string v2, "FULL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a8

    goto :goto_591

    :cond_5a8
    const/4 v1, 0x1

    goto :goto_5b4

    :sswitch_5aa
    const-string v2, "AUTO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b3

    goto :goto_591

    :cond_5b3
    const/4 v1, 0x0

    :goto_5b4
    packed-switch v1, :pswitch_data_dcc

    const-string v1, "Invalid hdmi_rgb_range string: 0"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_5bc  #0x0
    const/4 v1, 0x0

    goto :goto_5c1

    :pswitch_5be  #0x2
    const/4 v1, 0x1

    goto :goto_5c1

    :pswitch_5c0  #0x1
    const/4 v1, 0x2

    :goto_5c1
    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v3, 0x20

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5cf
    const-string/jumbo v1, "hdmi_rgb_range"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_5d5
    const-string/jumbo v1, "color_space"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66d

    const-string/jumbo v1, "color_space"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_667

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_dd6

    :goto_5ee
    move/from16 v2, v18

    goto :goto_640

    :sswitch_5f1
    const-string v2, "BT2020"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5fa

    goto :goto_5ee

    :cond_5fa
    const/4 v2, 0x6

    goto :goto_640

    :sswitch_5fc
    const-string v2, "ADOBE_RGB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_605

    goto :goto_5ee

    :cond_605
    const/4 v2, 0x5

    goto :goto_640

    :sswitch_607
    const-string v2, "AUTO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_610

    goto :goto_5ee

    :cond_610
    const/4 v2, 0x4

    goto :goto_640

    :sswitch_612
    const-string/jumbo v2, "OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61c

    goto :goto_5ee

    :cond_61c
    const/4 v2, 0x3

    goto :goto_640

    :sswitch_61e
    const-string v2, "DCI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_627

    goto :goto_5ee

    :cond_627
    const/4 v2, 0x2

    goto :goto_640

    :sswitch_629
    const-string/jumbo v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_633

    goto :goto_5ee

    :cond_633
    const/4 v2, 0x1

    goto :goto_640

    :sswitch_635
    const-string/jumbo v2, "S_RGB_BT_709"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63f

    goto :goto_5ee

    :cond_63f
    const/4 v2, 0x0

    :goto_640
    packed-switch v2, :pswitch_data_df4

    const-string v2, "Invalid color_space string: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_64c  #0x3
    const/4 v1, 0x6

    goto :goto_659

    :pswitch_64e  #0x6
    const/4 v1, 0x4

    goto :goto_659

    :pswitch_650  #0x5
    const/4 v1, 0x3

    goto :goto_659

    :pswitch_652  #0x4
    const/4 v1, 0x0

    goto :goto_659

    :pswitch_654  #0x2
    const/4 v1, 0x2

    goto :goto_659

    :pswitch_656  #0x1
    const/4 v1, 0x5

    goto :goto_659

    :pswitch_658  #0x0
    const/4 v1, 0x1

    :goto_659
    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v3, 0x21

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_667
    const-string/jumbo v1, "color_space"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_66d
    const-string/jumbo v1, "panel_init_max_lumince_nits"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_691

    const-string/jumbo v1, "panel_init_max_lumince_nits"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x22

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "panel_init_max_lumince_nits"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_691
    const-string/jumbo v1, "panel_init_max_lumince_valid"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b5

    const-string/jumbo v1, "panel_init_max_lumince_valid"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v3, 0x23

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "panel_init_max_lumince_valid"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_6b5
    const-string/jumbo v1, "gamma"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_717

    const-string/jumbo v1, "gamma"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_711

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_e06

    :goto_6ce
    move/from16 v2, v18

    goto :goto_6f2

    :sswitch_6d1
    const-string v2, "BRIGHT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6da

    goto :goto_6ce

    :cond_6da
    const/4 v2, 0x2

    goto :goto_6f2

    :sswitch_6dc
    const-string v2, "DARK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e5

    goto :goto_6ce

    :cond_6e5
    const/4 v2, 0x1

    goto :goto_6f2

    :sswitch_6e7
    const-string/jumbo v2, "MIDDLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f1

    goto :goto_6ce

    :cond_6f1
    const/4 v2, 0x0

    :goto_6f2
    packed-switch v2, :pswitch_data_e14

    const-string v2, "Invalid gamma string: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_6fe  #0x1
    const/4 v1, 0x0

    goto :goto_703

    :pswitch_700  #0x2
    const/4 v1, 0x2

    goto :goto_703

    :pswitch_702  #0x0
    const/4 v1, 0x1

    :goto_703
    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v3, 0x24

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_711
    const-string/jumbo v1, "gamma"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_717
    const-string/jumbo v1, "color_temperature_red_offset"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73b

    const-string/jumbo v1, "color_temperature_red_offset"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x28

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_temperature_red_offset"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_73b
    const-string/jumbo v1, "color_temperature_green_offset"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75f

    const-string/jumbo v1, "color_temperature_green_offset"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x29

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_temperature_green_offset"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_75f
    const-string/jumbo v1, "color_temperature_blue_offset"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_783

    const-string/jumbo v1, "color_temperature_blue_offset"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x2a

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_temperature_blue_offset"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_783
    const-string/jumbo v1, "eleven_point_red"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a3

    const-string/jumbo v1, "eleven_point_red"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    const/16 v3, 0x2b

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "eleven_point_red"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_7a3
    const-string/jumbo v1, "eleven_point_green"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c3

    const-string/jumbo v1, "eleven_point_green"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    const/16 v3, 0x2c

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "eleven_point_green"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_7c3
    const-string/jumbo v1, "eleven_point_blue"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e3

    const-string/jumbo v1, "eleven_point_blue"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    const/16 v3, 0x2d

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "eleven_point_blue"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_7e3
    const-string/jumbo v1, "low_blue_light"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80d

    const-string/jumbo v1, "low_blue_light"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_807

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityUtils;->mapQualityLevel(Ljava/lang/String;)B

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v3, 0x2e

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_807
    const-string/jumbo v1, "low_blue_light"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_80d
    const-string/jumbo v1, "ld_mode"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_837

    const-string/jumbo v1, "ld_mode"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_831

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityUtils;->mapQualityLevel(Ljava/lang/String;)B

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v3, 0x2f

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_831
    const-string/jumbo v1, "ld_mode"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_837
    const-string/jumbo v1, "osd_red_gain"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85b

    const-string/jumbo v1, "osd_red_gain"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x30

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "osd_red_gain"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_85b
    const-string/jumbo v1, "osd_green_gain"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87f

    const-string/jumbo v1, "osd_green_gain"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x31

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "osd_green_gain"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_87f
    const-string/jumbo v1, "osd_blue_gain"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a3

    const-string/jumbo v1, "osd_blue_gain"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x32

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "osd_blue_gain"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_8a3
    const-string/jumbo v1, "osd_red_offset"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c7

    const-string/jumbo v1, "osd_red_offset"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x33

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "osd_red_offset"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_8c7
    const-string/jumbo v1, "osd_green_offset"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8eb

    const-string/jumbo v1, "osd_green_offset"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x34

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "osd_green_offset"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_8eb
    const-string/jumbo v1, "osd_blue_offset"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90f

    const-string/jumbo v1, "osd_blue_offset"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x35

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "osd_blue_offset"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_90f
    const-string/jumbo v1, "osd_hue"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_933

    const-string/jumbo v1, "osd_hue"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x36

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "osd_hue"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_933
    const-string/jumbo v1, "osd_saturation"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_957

    const-string/jumbo v1, "osd_saturation"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x37

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "osd_saturation"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_957
    const-string/jumbo v1, "osd_contrast"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97b

    const-string/jumbo v1, "osd_contrast"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x38

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "osd_contrast"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_97b
    const-string/jumbo v1, "color_tuner_switch"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_99f

    const-string/jumbo v1, "color_tuner_switch"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v3, 0x39

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_switch"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_99f
    const-string/jumbo v1, "color_tuner_hue_red"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9c3

    const-string/jumbo v1, "color_tuner_hue_red"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x3a

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_hue_red"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_9c3
    const-string/jumbo v1, "color_tuner_hue_green"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e7

    const-string/jumbo v1, "color_tuner_hue_green"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x3b

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_hue_green"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_9e7
    const-string/jumbo v1, "color_tuner_hue_blue"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a0b

    const-string/jumbo v1, "color_tuner_hue_blue"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x3c

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_hue_blue"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_a0b
    const-string/jumbo v1, "color_tuner_hue_cyan"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a2f

    const-string/jumbo v1, "color_tuner_hue_cyan"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x3d

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_hue_cyan"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_a2f
    const-string/jumbo v1, "color_tuner_hue_magenta"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a53

    const-string/jumbo v1, "color_tuner_hue_magenta"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x3e

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_hue_magenta"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_a53
    const-string/jumbo v1, "color_tuner_hue_yellow"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a77

    const-string/jumbo v1, "color_tuner_hue_yellow"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x3f

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_hue_yellow"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_a77
    const-string/jumbo v1, "color_tuner_hue_flesh"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a9b

    const-string/jumbo v1, "color_tuner_hue_flesh"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x40

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_hue_flesh"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_a9b
    const-string/jumbo v1, "color_tuner_saturation_red"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_abf

    const-string/jumbo v1, "color_tuner_saturation_red"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x41

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_saturation_red"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_abf
    const-string/jumbo v1, "color_tuner_saturation_green"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ae3

    const-string/jumbo v1, "color_tuner_saturation_green"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x42

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_saturation_green"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_ae3
    const-string/jumbo v1, "color_tuner_saturation_blue"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b07

    const-string/jumbo v1, "color_tuner_saturation_blue"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x43

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_saturation_blue"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_b07
    const-string/jumbo v1, "color_tuner_saturation_cyan"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b2b

    const-string/jumbo v1, "color_tuner_saturation_cyan"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x44

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_saturation_cyan"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_b2b
    const-string/jumbo v1, "color_tuner_saturation_magenta"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b4f

    const-string/jumbo v1, "color_tuner_saturation_magenta"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x45

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_saturation_magenta"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_b4f
    const-string/jumbo v1, "color_tuner_saturation_yellow"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b73

    const-string/jumbo v1, "color_tuner_saturation_yellow"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x46

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_saturation_yellow"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_b73
    const-string/jumbo v1, "color_tuner_saturation_flesh"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b97

    const-string/jumbo v1, "color_tuner_saturation_flesh"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x47

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_saturation_flesh"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_b97
    const-string/jumbo v1, "color_tuner_luminance_red"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bbb

    const-string/jumbo v1, "color_tuner_luminance_red"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x48

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_luminance_red"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_bbb
    const-string/jumbo v1, "color_tuner_luminance_green"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bdf

    const-string/jumbo v1, "color_tuner_luminance_green"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x49

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_luminance_green"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_bdf
    const-string/jumbo v1, "color_tuner_luminance_blue"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c03

    const-string/jumbo v1, "color_tuner_luminance_blue"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x4a

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_luminance_blue"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_c03
    const-string/jumbo v1, "color_tuner_luminance_cyan"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c27

    const-string/jumbo v1, "color_tuner_luminance_cyan"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x4b

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_luminance_cyan"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_c27
    const-string/jumbo v1, "color_tuner_luminance_magenta"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c4b

    const-string/jumbo v1, "color_tuner_luminance_magenta"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x4c

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_luminance_magenta"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_c4b
    const-string/jumbo v1, "color_tuner_luminance_yellow"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c6f

    const-string/jumbo v1, "color_tuner_luminance_yellow"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x4d

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_luminance_yellow"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_c6f
    const-string/jumbo v1, "color_tuner_luminance_flesh"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c93

    const-string/jumbo v1, "color_tuner_luminance_flesh"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x4e

    invoke-direct {v2, v3, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "color_tuner_luminance_flesh"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_c93
    const-string/jumbo v1, "picture_quality_event_type"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d59

    const-string/jumbo v1, "picture_quality_event_type"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d53

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_e1e

    goto/16 :goto_d1b

    :sswitch_cae
    const-string v2, "DOLBY_IQ_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cb7

    goto :goto_d1b

    :cond_cb7
    const/16 v18, 0x7

    goto :goto_d1b

    :sswitch_cba
    const-string/jumbo v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc4

    goto :goto_d1b

    :cond_cc4
    const/16 v18, 0x6

    goto :goto_d1b

    :sswitch_cc7
    const-string v2, "BBD_RESULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cd1

    goto/16 :goto_d1b

    :cond_cd1
    const/16 v18, 0x5

    goto/16 :goto_d1b

    :sswitch_cd5
    const-string/jumbo v2, "VIDEO_DELAY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ce0

    goto/16 :goto_d1b

    :cond_ce0
    const/16 v18, 0x4

    goto/16 :goto_d1b

    :sswitch_ce4
    const-string v2, "EXTRA_FRAME_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cee

    goto/16 :goto_d1b

    :cond_cee
    const/16 v18, 0x3

    goto/16 :goto_d1b

    :sswitch_cf2
    const-string v2, "CAPTUREPOINT_INFO_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cfc

    goto/16 :goto_d1b

    :cond_cfc
    const/16 v18, 0x2

    goto/16 :goto_d1b

    :sswitch_d00
    const-string v2, "DOLBY_APO_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d0a

    goto/16 :goto_d1b

    :cond_d0a
    const/16 v18, 0x1

    goto/16 :goto_d1b

    :sswitch_d0e
    const-string/jumbo v2, "VIDEOPATH_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d19

    goto/16 :goto_d1b

    :cond_d19
    const/16 v18, 0x0

    :goto_d1b
    packed-switch v18, :pswitch_data_e40

    const-string v2, "Invalid event type string: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_d27  #0x6
    const/16 v17, 0x0

    goto/16 :goto_d45

    :pswitch_d2b  #0x7
    const/16 v17, 0x6

    goto/16 :goto_d45

    :pswitch_d2f  #0x5
    const/16 v17, 0x1

    goto/16 :goto_d45

    :pswitch_d33  #0x4
    const/16 v17, 0x2

    goto/16 :goto_d45

    :pswitch_d37  #0x3
    const/16 v17, 0x5

    goto/16 :goto_d45

    :pswitch_d3b  #0x2
    const/16 v17, 0x3

    goto/16 :goto_d45

    :pswitch_d3f  #0x1
    const/16 v17, 0x7

    goto/16 :goto_d45

    :pswitch_d43  #0x0
    const/16 v17, 0x4

    :goto_d45
    new-instance v1, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/16 v3, 0x50

    invoke-direct {v1, v3, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d53
    const-string/jumbo v1, "picture_quality_event_type"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_d59
    const/4 v1, 0x0

    new-array v0, v1, [Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/tv/mediaquality/PictureParameter;

    return-object v0

    nop

    :sswitch_data_d64
    .sparse-switch
        -0x551c7b61 -> :sswitch_366
        -0x551c5216 -> :sswitch_35a
        -0x3915f7d6 -> :sswitch_34e
        -0xac75ae4 -> :sswitch_342
        -0x525f9d8 -> :sswitch_336
        0xed2f2f8 -> :sswitch_32a
        0xedb2f7a -> :sswitch_31e
        0xedbd634 -> :sswitch_312
        0x24a9f2ec -> :sswitch_304
        0x40fd0e64 -> :sswitch_2f6
    .end sparse-switch

    :pswitch_data_d8e
    .packed-switch 0x0
        :pswitch_398  #00000000
        :pswitch_395  #00000001
        :pswitch_392  #00000002
        :pswitch_38f  #00000003
        :pswitch_38c  #00000004
        :pswitch_389  #00000005
        :pswitch_386  #00000006
        :pswitch_383  #00000007
        :pswitch_37d  #00000008
        :pswitch_380  #00000009
    .end packed-switch

    :sswitch_data_da6
    .sparse-switch
        0x1ed5af -> :sswitch_495
        0x211a8f -> :sswitch_48a
        0x354ae17a -> :sswitch_47f
    .end sparse-switch

    :pswitch_data_db4
    .packed-switch 0x0
        :pswitch_4ab  #00000000
        :pswitch_4af  #00000001
        :pswitch_4ad  #00000002
    .end packed-switch

    :sswitch_data_dbe
    .sparse-switch
        0x1ed5af -> :sswitch_5aa
        0x211a8f -> :sswitch_59f
        0x354ae17a -> :sswitch_594
    .end sparse-switch

    :pswitch_data_dcc
    .packed-switch 0x0
        :pswitch_5bc  #00000000
        :pswitch_5c0  #00000001
        :pswitch_5be  #00000002
    .end packed-switch

    :sswitch_data_dd6
    .sparse-switch
        -0x31ee5af -> :sswitch_635
        0x9df -> :sswitch_629
        0x107aa -> :sswitch_61e
        0x1314f -> :sswitch_612
        0x1ed5af -> :sswitch_607
        0x4d4fe3d -> :sswitch_5fc
        0x7557044e -> :sswitch_5f1
    .end sparse-switch

    :pswitch_data_df4
    .packed-switch 0x0
        :pswitch_658  #00000000
        :pswitch_656  #00000001
        :pswitch_654  #00000002
        :pswitch_64c  #00000003
        :pswitch_652  #00000004
        :pswitch_650  #00000005
        :pswitch_64e  #00000006
    .end packed-switch

    :sswitch_data_e06
    .sparse-switch
        -0x7876326b -> :sswitch_6e7
        0x1fe776 -> :sswitch_6dc
        0x7545a2fa -> :sswitch_6d1
    .end sparse-switch

    :pswitch_data_e14
    .packed-switch 0x0
        :pswitch_702  #00000000
        :pswitch_6fe  #00000001
        :pswitch_700  #00000002
    .end packed-switch

    :sswitch_data_e1e
    .sparse-switch
        -0x6da12e31 -> :sswitch_d0e
        -0x5eeba3ca -> :sswitch_d00
        -0x4f96a654 -> :sswitch_cf2
        -0x1f9a992f -> :sswitch_ce4
        -0x10760890 -> :sswitch_cd5
        -0x24b9348 -> :sswitch_cc7
        0x24a738 -> :sswitch_cba
        0x4cc0060 -> :sswitch_cae
    .end sparse-switch

    :pswitch_data_e40
    .packed-switch 0x0
        :pswitch_d43  #00000000
        :pswitch_d3f  #00000001
        :pswitch_d3b  #00000002
        :pswitch_d37  #00000003
        :pswitch_d33  #00000004
        :pswitch_d2f  #00000005
        :pswitch_d27  #00000006
        :pswitch_d2b  #00000007
    .end packed-switch
.end method

.method public static convertPersistableBundleToSoundParameterList(Landroid/os/PersistableBundle;)[Landroid/hardware/tv/mediaquality/SoundParameter;
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "balance"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v4, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_26
    const-string/jumbo v1, "bass"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v4, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_43
    const-string/jumbo v1, "treble"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v4, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    invoke-direct {v4, v5, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_60
    const-string/jumbo v1, "surround_sound"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x3

    if-eqz v2, :cond_7d

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    new-instance v5, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v5, v4, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_7d
    const-string/jumbo v1, "speakers"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    new-instance v5, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v6, 0x5

    invoke-direct {v5, v6, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_9a
    const-string/jumbo v1, "speakers_delay_millis"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b7

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v5, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x6

    invoke-direct {v5, v6, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_b7
    const-string/jumbo v1, "auto_volume_control"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d5

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    new-instance v5, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v6, 0x8

    invoke-direct {v5, v6, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_d5
    const-string/jumbo v1, "dts_drc"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f3

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    new-instance v5, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v6, 0xa

    invoke-direct {v5, v6, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_f3
    const-string/jumbo v1, "digital_output_delay_millis"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10f

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    new-instance v5, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v5, v4, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_10f
    const-string/jumbo v1, "earc"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12c

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    new-instance v4, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x7

    invoke-direct {v4, v5, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_12c
    const-string/jumbo v1, "down_mix_mode"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14b

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    new-instance v4, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/16 v5, 0x9

    invoke-direct {v4, v5, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_14b
    const-string/jumbo v1, "sound_style"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16a

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    new-instance v4, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/16 v5, 0x11

    invoke-direct {v4, v5, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_16a
    const-string/jumbo v1, "digital_output_mode"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_189

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    new-instance v4, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/16 v5, 0xe

    invoke-direct {v4, v5, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_189
    const-string/jumbo v1, "dialogue_enhancer"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    new-instance v4, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/16 v5, 0xc

    invoke-direct {v4, v5, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_1a8
    new-instance v1, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    invoke-direct {v1}, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;-><init>()V

    const-string/jumbo v2, "dolby_audio_processing_sound_mode"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c0

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, v1, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->soundMode:B

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_1c0
    const-string/jumbo v2, "dolby_audio_processing_volume_leveler"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d2

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->volumeLeveler:Z

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_1d2
    const-string/jumbo v2, "dolby_audio_processing_surround_virtualizer"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e4

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->surroundVirtualizer:Z

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_1e4
    const-string/jumbo v2, "dolby_audio_processing_dolby_atmos"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f6

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->dolbyAtmos:Z

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_1f6
    new-instance v2, Landroid/hardware/tv/mediaquality/SoundParameter;

    const/16 v4, 0xb

    invoke-direct {v2, v4, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/hardware/tv/mediaquality/DtsVirtualX;

    invoke-direct {v1}, Landroid/hardware/tv/mediaquality/DtsVirtualX;-><init>()V

    const-string/jumbo v2, "dts_virtual_x_tbhdx"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_217

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Landroid/hardware/tv/mediaquality/DtsVirtualX;->tbHdx:Z

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_217
    const-string/jumbo v2, "dts_virtual_x_limiter"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_229

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Landroid/hardware/tv/mediaquality/DtsVirtualX;->tbHdx:Z

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_229
    const-string/jumbo v2, "dts_virtual_x_tru_surround_x"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23b

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Landroid/hardware/tv/mediaquality/DtsVirtualX;->tbHdx:Z

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_23b
    const-string/jumbo v2, "dts_virtual_x_tru_volume_hd"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24d

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Landroid/hardware/tv/mediaquality/DtsVirtualX;->tbHdx:Z

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_24d
    const-string/jumbo v2, "dts_virtual_x_dialog_clarity"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25f

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Landroid/hardware/tv/mediaquality/DtsVirtualX;->tbHdx:Z

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_25f
    const-string/jumbo v2, "dts_virtual_x_definition"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_271

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Landroid/hardware/tv/mediaquality/DtsVirtualX;->tbHdx:Z

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_271
    const-string/jumbo v2, "dts_virtual_x_height"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_283

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Landroid/hardware/tv/mediaquality/DtsVirtualX;->tbHdx:Z

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    :cond_283
    new-instance p0, Landroid/hardware/tv/mediaquality/SoundParameter;

    const/16 v2, 0xd

    invoke-direct {p0, v2, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p0, v3, [Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/tv/mediaquality/SoundParameter;

    return-object p0
.end method

.method public static convertToCaps(ILandroid/hardware/tv/mediaquality/ParameterRange;)Landroid/os/Bundle;
    .registers 11

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_85

    iget-object v1, p1, Landroid/hardware/tv/mediaquality/ParameterRange;->numRange:Landroid/hardware/tv/mediaquality/NumberRange;

    if-nez v1, :cond_c

    goto :goto_85

    :cond_c
    add-int/lit8 p0, p0, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "max"

    const-string/jumbo v5, "min"

    if-nez p0, :cond_3b

    invoke-virtual {v1, v3}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    iget-object p0, v1, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast p0, [I

    aget p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v5, p0}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p1, Landroid/hardware/tv/mediaquality/ParameterRange;->numRange:Landroid/hardware/tv/mediaquality/NumberRange;

    invoke-virtual {p0, v3}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast p0, [I

    aget p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_3b
    const/4 v6, 0x2

    if-ne p0, v6, :cond_61

    invoke-virtual {v1, v6}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    iget-object p0, v1, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast p0, [D

    aget-wide v7, p0, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v0, v5, p0}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p1, Landroid/hardware/tv/mediaquality/ParameterRange;->numRange:Landroid/hardware/tv/mediaquality/NumberRange;

    invoke-virtual {p0, v6}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast p0, [D

    aget-wide p0, p0, v2

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_61
    if-ne p0, v2, :cond_85

    invoke-virtual {v1, v2}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    iget-object p0, v1, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast p0, [J

    aget-wide v6, p0, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v5, p0}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p1, Landroid/hardware/tv/mediaquality/ParameterRange;->numRange:Landroid/hardware/tv/mediaquality/NumberRange;

    invoke-virtual {p0, v2}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast p0, [J

    aget-wide p0, p0, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_85
    :goto_85
    return-object v0
.end method

.method public static getContentValues(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/ContentValues;
    .registers 8

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p0, :cond_d

    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_d
    if-eqz p1, :cond_15

    const-string/jumbo p0, "_type"

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_15
    if-eqz p2, :cond_1d

    const-string/jumbo p0, "_name"

    invoke-virtual {v0, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    if-eqz p3, :cond_25

    const-string/jumbo p0, "_package"

    invoke-virtual {v0, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    if-eqz p4, :cond_2d

    const-string/jumbo p0, "_input_id"

    invoke-virtual {v0, p0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    if-eqz p5, :cond_9e

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p5}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3c
    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_94

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p5, p2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    :try_start_4c
    instance-of p4, p3, Ljava/lang/String;

    if-eqz p4, :cond_5a

    invoke-virtual {p5, p2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3c

    :catch_58
    move-exception p2

    goto :goto_8a

    :cond_5a
    instance-of p4, p3, Ljava/lang/Integer;

    if-eqz p4, :cond_66

    invoke-virtual {p5, p2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3c

    :cond_66
    instance-of p4, p3, Ljava/lang/Long;

    if-eqz p4, :cond_72

    invoke-virtual {p5, p2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p3

    invoke-virtual {p0, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_3c

    :cond_72
    instance-of p4, p3, Ljava/lang/Boolean;

    if-eqz p4, :cond_7e

    invoke-virtual {p5, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_3c

    :cond_7e
    instance-of p3, p3, Ljava/lang/Double;

    if-eqz p3, :cond_3c

    invoke-virtual {p5, p2}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide p3

    invoke-virtual {p0, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_89
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_89} :catch_58

    goto :goto_3c

    :goto_8a
    const-string/jumbo p3, "MediaQualityUtils"

    const-string/jumbo p4, "Unable to serialize "

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    :cond_94
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "settings"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9e
    return-object v0
.end method

.method public static getMediaProfileColumns(Z)[Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "_input_id"

    const-string/jumbo v2, "_package"

    const-string/jumbo v3, "_id"

    const-string/jumbo v4, "_type"

    const-string/jumbo v5, "_name"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p0, :cond_24

    const-string/jumbo p0, "settings"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getParameterName(B)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "brightness"

    const/4 v3, 0x1

    const-string/jumbo v4, "contrast"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/4 v1, 0x2

    const-string/jumbo v2, "sharpness"

    const/4 v3, 0x3

    const-string/jumbo v4, "saturation"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/4 v1, 0x4

    const-string/jumbo v2, "hue"

    const/4 v3, 0x5

    const-string/jumbo v4, "color_tuner_brightness"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/4 v1, 0x6

    const-string/jumbo v2, "color_tuner_saturation"

    const/4 v3, 0x7

    const-string/jumbo v4, "color_tuner_hue"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x8

    const-string/jumbo v2, "color_tuner_red_offset"

    const/16 v3, 0x9

    const-string/jumbo v4, "color_tuner_green_offset"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0xa

    const-string/jumbo v2, "color_tuner_blue_offset"

    const/16 v3, 0xb

    const-string/jumbo v4, "color_tuner_red_gain"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0xc

    const-string/jumbo v2, "color_tuner_green_gain"

    const/16 v3, 0xd

    const-string/jumbo v4, "color_tuner_blue_gain"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0xe

    const-string/jumbo v2, "noise_reduction"

    const/16 v3, 0xf

    const-string/jumbo v4, "mpeg_noise_reduction"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x10

    const-string/jumbo v2, "flesh_tone"

    const/16 v3, 0x11

    const-string/jumbo v4, "decontour"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x12

    const-string/jumbo v2, "dynamic_luma_control"

    const/16 v3, 0x13

    const-string/jumbo v4, "film_mode"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x14

    const-string/jumbo v2, "black_stretch"

    const/16 v3, 0x15

    const-string/jumbo v4, "blue_stretch"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x16

    const-string/jumbo v2, "color_tune"

    const/16 v3, 0x17

    const-string/jumbo v4, "color_temperature"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x18

    const-string/jumbo v2, "global_dimming"

    const/16 v3, 0x19

    const-string/jumbo v4, "auto_picture_quality_enabled"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x1a

    const-string/jumbo v2, "auto_super_resolution_enabled"

    const/16 v3, 0x1b

    const-string/jumbo v4, "level_range"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x1c

    const-string/jumbo v2, "gamut_mapping"

    const/16 v3, 0x1d

    const-string/jumbo v4, "pc_mode"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x1e

    const-string/jumbo v2, "low_latency"

    const/16 v3, 0x1f

    const-string/jumbo v4, "vrr"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x20

    const-string/jumbo v2, "cvrr"

    const/16 v3, 0x21

    const-string/jumbo v4, "hdmi_rgb_range"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x22

    const-string/jumbo v2, "color_space"

    const/16 v3, 0x23

    const-string/jumbo v4, "panel_init_max_lumince_valid"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x24

    const-string/jumbo v2, "gamma"

    const/16 v3, 0x25

    const-string/jumbo v4, "color_temperature_red_gain"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x26

    const-string/jumbo v2, "color_temperature_green_gain"

    const/16 v3, 0x27

    const-string/jumbo v4, "color_temperature_blue_gain"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x28

    const-string/jumbo v2, "color_temperature_red_offset"

    const/16 v3, 0x29

    const-string/jumbo v4, "color_temperature_green_offset"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x2a

    const-string/jumbo v2, "color_temperature_blue_offset"

    const/16 v3, 0x2b

    const-string/jumbo v4, "eleven_point_red"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x2c

    const-string/jumbo v2, "eleven_point_green"

    const/16 v3, 0x2d

    const-string/jumbo v4, "eleven_point_blue"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x2e

    const-string/jumbo v2, "low_blue_light"

    const/16 v3, 0x2f

    const-string/jumbo v4, "ld_mode"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x30

    const-string/jumbo v2, "osd_red_gain"

    const/16 v3, 0x31

    const-string/jumbo v4, "osd_green_gain"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x32

    const-string/jumbo v2, "osd_blue_gain"

    const/16 v3, 0x33

    const-string/jumbo v4, "osd_red_offset"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x34

    const-string/jumbo v2, "osd_green_offset"

    const/16 v3, 0x35

    const-string/jumbo v4, "osd_blue_offset"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x36

    const-string/jumbo v2, "osd_hue"

    const/16 v3, 0x37

    const-string/jumbo v4, "osd_saturation"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x38

    const-string/jumbo v2, "osd_contrast"

    const/16 v3, 0x39

    const-string/jumbo v4, "color_tuner_switch"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x3a

    const-string/jumbo v2, "color_tuner_hue_red"

    const/16 v3, 0x3b

    const-string/jumbo v4, "color_tuner_hue_green"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x3c

    const-string/jumbo v2, "color_tuner_hue_blue"

    const/16 v3, 0x3d

    const-string/jumbo v4, "color_tuner_hue_cyan"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x3e

    const-string/jumbo v2, "color_tuner_hue_magenta"

    const/16 v3, 0x3f

    const-string/jumbo v4, "color_tuner_hue_yellow"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x40

    const-string/jumbo v2, "color_tuner_hue_flesh"

    const/16 v3, 0x41

    const-string/jumbo v4, "color_tuner_saturation_red"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x42

    const-string/jumbo v2, "color_tuner_saturation_green"

    const/16 v3, 0x43

    const-string/jumbo v4, "color_tuner_saturation_blue"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x44

    const-string/jumbo v2, "color_tuner_saturation_cyan"

    const/16 v3, 0x45

    const-string/jumbo v4, "color_tuner_saturation_magenta"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x46

    const-string/jumbo v2, "color_tuner_saturation_yellow"

    const/16 v3, 0x47

    const-string/jumbo v4, "color_tuner_saturation_flesh"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x48

    const-string/jumbo v2, "color_tuner_luminance_red"

    const/16 v3, 0x49

    const-string/jumbo v4, "color_tuner_luminance_green"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x4a

    const-string/jumbo v2, "color_tuner_luminance_blue"

    const/16 v3, 0x4b

    const-string/jumbo v4, "color_tuner_luminance_cyan"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x4c

    const-string/jumbo v2, "color_tuner_luminance_magenta"

    const/16 v3, 0x4d

    const-string/jumbo v4, "color_tuner_luminance_yellow"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x4e

    const-string/jumbo v2, "color_tuner_luminance_flesh"

    const/16 v3, 0x4f

    const-string/jumbo v4, "balance"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x50

    const-string/jumbo v2, "bass"

    const/16 v3, 0x51

    const-string/jumbo v4, "treble"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x52

    const-string/jumbo v2, "surround_sound"

    const/16 v3, 0x53

    const-string/jumbo v4, "equalizer_detail"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x54

    const-string/jumbo v2, "speakers"

    const/16 v3, 0x55

    const-string/jumbo v4, "speakers_delay_millis"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x56

    const-string/jumbo v2, "earc"

    const/16 v3, 0x57

    const-string/jumbo v4, "auto_volume_control"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x58

    const-string/jumbo v2, "down_mix_mode"

    const/16 v3, 0x59

    const-string/jumbo v4, "dts_drc"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x5a

    const-string/jumbo v2, "dolby_audio_processing"

    const/16 v3, 0x5b

    const-string/jumbo v4, "dialogue_enhancer"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x5c

    const-string/jumbo v2, "dts_virtual_x"

    const/16 v3, 0x5d

    const-string/jumbo v4, "digital_output_mode"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    const/16 v1, 0x5e

    const-string/jumbo v2, "digital_output_delay_millis"

    const/16 v3, 0x5f

    const-string/jumbo v4, "sound_style"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityUtils$$ExternalSyntheticOutline0;->m(BLjava/util/HashMap;Ljava/lang/String;BLjava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static jsonToPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 6

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    if-eqz p0, :cond_69

    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2a

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_2a
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_38

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_10

    :cond_38
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_46

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_10

    :cond_46
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_54

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_10

    :cond_54
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_10

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_61} :catch_62

    goto :goto_10

    :catch_62
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_69
    return-object v0
.end method

.method public static mapQualityLevel(Ljava/lang/String;)B
    .registers 7

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_50

    goto :goto_3c

    :sswitch_d
    const-string/jumbo v5, "level_medium"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    goto :goto_3c

    :cond_17
    move v4, v0

    goto :goto_3c

    :sswitch_19
    const-string/jumbo v5, "level_high"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_3c

    :cond_23
    move v4, v1

    goto :goto_3c

    :sswitch_25
    const-string/jumbo v5, "level_off"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    goto :goto_3c

    :cond_2f
    move v4, v2

    goto :goto_3c

    :sswitch_31
    const-string/jumbo v5, "level_low"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    goto :goto_3c

    :cond_3b
    move v4, v3

    :goto_3c
    packed-switch v4, :pswitch_data_62

    const-string v0, "Invalid noise_reduction string: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "PictureParams"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_4c  #0x3
    return v1

    :pswitch_4d  #0x2
    return v0

    :pswitch_4e  #0x1
    return v3

    :pswitch_4f  #0x0
    return v2

    :sswitch_data_50
    .sparse-switch
        -0x62b2f3e7 -> :sswitch_31
        -0x62b2e9cc -> :sswitch_25
        0xc528d7d -> :sswitch_19
        0x4a33b490 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_4f  #00000000
        :pswitch_4e  #00000001
        :pswitch_4d  #00000002
        :pswitch_4c  #00000003
    .end packed-switch
.end method

.method public static populateTempIdMap(Lcom/android/server/media/quality/BiMap;Ljava/lang/Long;)V
    .registers 5

    if-eqz p1, :cond_22

    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_22

    const/4 v0, 0x0

    :goto_9
    const/16 v1, 0xa

    if-ge v0, v1, :cond_22

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1f

    invoke-virtual {p0, p1, v1}, Lcom/android/server/media/quality/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_22
    return-void
.end method
