.class public abstract Lcom/samsung/android/sdk/scs/base/feature/Feature;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final SUPPORTED_SIVS_FEATURES:Ljava/util/List;

.field public static final SUPPORTED_VISUAL_CLOUD_FEATURES:Ljava/util/List;

.field public static final SUPPORTED_VISUAL_FEATURES:Ljava/util/List;

.field public static sIsVst:Ljava/lang/Boolean;

.field public static sIsWatch:Ljava/lang/Boolean;

.field public static final sinceVersionMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 32

    const-string v30, "FEATURE_SIVS_FORMAT_CONVERSION"

    const-string v31, "FEATURE_AI_LANGUAGE_PACK_CONFIGURATION_PROVIDER"

    const-string v1, "FEATURE_SPEECH_RECOGNITION"

    const-string v2, "FEATURE_SPEECH_LOCALE_RECOGNITION"

    const-string v3, "FEATURE_SPEAKER_DIARISATION"

    const-string v4, "FEATURE_AUDIO_TO_TRANSLATION"

    const-string v5, "FEATURE_AI_GEN_SUMMARY"

    const-string v6, "FEATURE_AI_GEN_TRANSLATION"

    const-string v7, "FEATURE_AI_GEN_TONE"

    const-string v8, "FEATURE_AI_GEN_CORRECTION"

    const-string v9, "FEATURE_AI_GEN_SUGGESTION"

    const-string v10, "FEATURE_AI_GEN_SUGGESTION_ONDEVICE"

    const-string v11, "FEATURE_AI_GEN_SMART_COVER"

    const-string v12, "FEATURE_AI_GEN_SMART_REPLY"

    const-string v13, "FEATURE_AI_GEN_EMOJI_AUGMENTATION"

    const-string v14, "FEATURE_AI_GEN_NOTES_ORGANIZATION"

    const-string v15, "FEATURE_AI_GEN_SMART_CAPTURE"

    const-string v16, "FEATURE_AI_GEN_GENERIC"

    const-string v17, "FEATURE_AI_GEN_USAGE"

    const-string v18, "FEATURE_NEURAL_TRANSLATION"

    const-string v19, "FEATURE_LANGUAGE_LIST_IDENTIFICATION"

    const-string v20, "FEATURE_LANGUAGE_IDENTIFICATION_AND_GET_CANDIDATE"

    const-string v21, "FEATURE_NEURAL_TRANSLATION_BY_CHUNK"

    const-string v22, "FEATURE_NEURAL_TRANSLATION_CLEAR_WITH_SOURCE_ID"

    const-string v23, "FEATURE_NEURAL_TRANSLATION_TAG_SUPPORTED"

    const-string v24, "FEATURE_SIVS_CLASSIFICATION"

    const-string v25, "FEATURE_SIVS_CONFIGURATION"

    const-string v26, "FEATURE_SIVS_EXTRACTION"

    const-string v27, "FEATURE_SIVS_EXTRACTION_ONDEVICE"

    const-string v28, "FEATURE_SIVS_WRITING_COMPOSER"

    const-string v29, "FEATURE_SIVS_WRITING_COMPOSER_ONDEVICE"

    filled-new-array/range {v1 .. v31}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_SIVS_FEATURES:Ljava/util/List;

    const-string v6, "FEATURE_SKETCH_GUIDE_EDITING_ON_DEVICE"

    const-string v7, "FEATURE_PORTRAIT_RELIGHT_ON_DEVICE"

    const-string v1, "FEATURE_DOWNLOAD"

    const-string v2, "FEATURE_WALLPAPER"

    const-string v3, "FEATURE_GEN_EDIT_ON_DEVICE"

    const-string v4, "FEATURE_PORTRAIT_ON_DEVICE"

    const-string v5, "FEATURE_SKETCH_TO_IMAGE_ON_DEVICE"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_VISUAL_FEATURES:Ljava/util/List;

    const-string v6, "FEATURE_GEN_STICKER"

    const-string v7, "FEATURE_IMAGE_CONVERSION"

    const-string v1, "FEATURE_PORTRAIT"

    const-string v2, "FEATURE_SKETCH_TO_IMAGE"

    const-string v3, "FEATURE_SKETCH_GUIDE_EDITING"

    const-string v4, "FEATURE_SKETCH_GUIDE_EDITING_CROPPING_RECT"

    const-string v5, "FEATURE_C2PA"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_VISUAL_CLOUD_FEATURES:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FEATURE_IMAGE_GET_BOUNDARIES"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "FEATURE_IMAGE_GET_LARGEST_BOUNDARY"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FEATURE_IMAGE_UPSCALE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "FEATURE_SUGGESTION_SUGGEST_KEYWORD"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "FEATURE_SUGGESTION_SUGGEST_APP_CATEGORY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FEATURE_SUGGESTION_SUGGEST_APP_CATEGORY_DETAILS"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "FEATURE_SUGGESTION_SUGGEST_FOLDER_NAME"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "FEATURE_TEXT_GET_ENTITY"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "FEATURE_TEXT_GET_ENTITY_BULK"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "FEATURE_TEXT_GET_ENTITY_DATETIME_NUMERAL"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x16

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "FEATURE_TEXT_GET_ENTITY_DATETIME_SEARCH"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "FEATURE_TEXT_GET_ENTITY_PHONE_NUMBER"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "FEATURE_TEXT_GET_ENTITY_POI"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "FEATURE_TEXT_GET_ENTITY_BANK"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "FEATURE_TEXT_GET_ENTITY_IS_MAPPABLE"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "FEATURE_TEXT_GET_ENTITY_IS_RELATIVE"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "FEATURE_TEXT_GET_ENTITY_IS_SPECIAL_DAY"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "FEATURE_TEXT_GET_ENTITY_HAS_YEAR_MONTH_DAY"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "FEATURE_TEXT_GET_ENTITY_UPI_ID"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "FEATURE_TEXT_GET_ENTITY_UNIT"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "FEATURE_TEXT_GET_EVENT"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "FEATURE_TEXT_GET_EVENT_HAS_YEAR_MONTH_DAY"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "FEATURE_TEXT_GET_EVENT_INDEX"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "FEATURE_TEXT_GET_KEY_PHRASE"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0xb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "FEATURE_TEXT_GET_KEY_PHRASE_EVENT_TITLE"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "FEATURE_TEXT_GET_DOCUMENT_CATEGORY"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "FEATURE_TEXT_GET_BNLP"

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "FEATURE_TEXT_GET_BNLP_TOKEN"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "FEATURE_TEXT_DETECT_LANGUAGE"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "FEATURE_TEXT_CONVERT_UNIT"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x17

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "FEATURE_TEXT_GET_REMINDER_ENTITY"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "FEATURE_NATURAL_LANGUAGE_QUERY"

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "FEATURE_SPEECH_RECOGNITION"

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "FEATURE_SPEECH_LOCALE_RECOGNITION"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "FEATURE_SPEAKER_DIARISATION"

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "FEATURE_AUDIO_TO_TRANSLATION"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "FEATURE_AI_GEN_SUMMARY"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "FEATURE_AI_GEN_TRANSLATION"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "FEATURE_AI_GEN_TONE"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "FEATURE_AI_GEN_CORRECTION"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "FEATURE_AI_GEN_SUGGESTION"

    invoke-virtual {v0, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "FEATURE_AI_GEN_SUGGESTION_ONDEVICE"

    invoke-virtual {v0, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "FEATURE_AI_GEN_SMART_COVER"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "FEATURE_AI_GEN_SMART_REPLY"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "FEATURE_AI_GEN_EMOJI_AUGMENTATION"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "FEATURE_AI_GEN_NOTES_ORGANIZATION"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "FEATURE_AI_GEN_SMART_CAPTURE"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "FEATURE_AI_GEN_GENERIC"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "FEATURE_NEURAL_TRANSLATION"

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "FEATURE_LANGUAGE_LIST_IDENTIFICATION"

    invoke-virtual {v0, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v10, "FEATURE_LANGUAGE_IDENTIFICATION_AND_GET_CANDIDATE"

    invoke-virtual {v0, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "FEATURE_NEURAL_TRANSLATION_BY_CHUNK"

    invoke-virtual {v0, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "FEATURE_NEURAL_TRANSLATION_TAG_SUPPORTED"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "FEATURE_NEURAL_TRANSLATION_CLEAR_WITH_SOURCE_ID"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "FEATURE_SIVS_CLASSIFICATION"

    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "FEATURE_SIVS_EXTRACTION"

    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "FEATURE_SIVS_EXTRACTION_ONDEVICE"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "FEATURE_SIVS_WRITING_COMPOSER"

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "FEATURE_SIVS_WRITING_COMPOSER_ONDEVICE"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "FEATURE_SIVS_FORMAT_CONVERSION"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "FEATURE_SIVS_CONFIGURATION"

    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "FEATURE_AI_GEN_USAGE"

    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "FEATURE_AI_LANGUAGE_PACK_CONFIGURATION_PROVIDER"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "FEATURE_WALLPAPER"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "FEATURE_DOWNLOAD"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "FEATURE_PORTRAIT"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "FEATURE_SKETCH_TO_IMAGE"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "FEATURE_SKETCH_GUIDE_EDITING"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FEATURE_SKETCH_GUIDE_EDITING_CROPPING_RECT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FEATURE_C2PA"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FEATURE_GEN_STICKER"

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FEATURE_IMAGE_CONVERSION"

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FEATURE_GEN_EDIT_ON_DEVICE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FEATURE_SKETCH_TO_IMAGE_ON_DEVICE"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->sinceVersionMap:Ljava/util/Map;

    return-void
.end method

.method public static checkFeature(Landroid/content/Context;)I
    .registers 11

    const-string v0, "Get feature version from global settings. feature : FEATURE_TEXT_GET_DOCUMENT_CATEGORY, version : "

    const-string/jumbo v1, "checkFeature(). "

    const-string/jumbo v2, "ScsApi@Feature"

    invoke-static {v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "checkFeature() : FEATURE_TEXT_GET_DOCUMENT_CATEGORY, sdk : 4.0.14"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_229

    const/4 v3, 0x0

    :try_start_15
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_1a
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_19} :catch_1a

    goto :goto_26

    :catch_1a
    move-exception v4

    const-string/jumbo v5, "ScsApi@FrameworkWrapper"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    :goto_26
    if-eqz v4, :cond_34

    const-string/jumbo p0, "checkFeature(). not supported in emergency mode"

    invoke-static {v2, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x8

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/feature/FeatureStatusCache;->setStatus(I)V

    return p0

    :cond_34
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->isSIVSAvailableOSVersion(Landroid/content/Context;)Z

    move-result v4

    const-string v5, "FEATURE_TEXT_GET_DOCUMENT_CATEGORY"

    if-eqz v4, :cond_48

    sget-object v4, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_SIVS_FEATURES:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    const-string/jumbo v4, "com.samsung.android.intellivoiceservice"

    goto :goto_63

    :cond_48
    sget-object v4, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_VISUAL_FEATURES:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    const-string/jumbo v4, "com.samsung.android.aicore"

    goto :goto_63

    :cond_54
    sget-object v4, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_VISUAL_CLOUD_FEATURES:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    const-string/jumbo v4, "com.samsung.android.visual.cloudcore"

    goto :goto_63

    :cond_60
    const-string/jumbo v4, "com.samsung.android.scs"

    :goto_63
    :try_start_63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v6, :cond_8e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has disabled."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/feature/FeatureStatusCache;->setStatus(I)V
    :try_end_8d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_63 .. :try_end_8d} :catch_214

    return p0

    :cond_8e
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->isSIVSAvailableOSVersion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a0

    sget-object v1, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_SIVS_FEATURES:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    const-string/jumbo v1, "scs_sivs_supported_feature_info"

    goto :goto_b8

    :cond_a0
    sget-object v1, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_VISUAL_FEATURES:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b5

    sget-object v1, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_VISUAL_CLOUD_FEATURES:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    goto :goto_b5

    :cond_b1
    const-string/jumbo v1, "scs_core_supported_feature_info"

    goto :goto_b8

    :cond_b5
    :goto_b5
    const-string/jumbo v1, "scs_visual_supported_feature_info"

    :goto_b8
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "getFeatureVersionFromSettings(), serviceApp : "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", feature : FEATURE_TEXT_GET_DOCUMENT_CATEGORY, settingKey : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "ScsApi@FeatureHelper"

    invoke-static {v8, v6}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x2

    :try_start_d6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_de
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d6 .. :try_end_de} :catch_13d

    :try_start_de
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e6} :catch_132

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_ee

    :goto_ec
    move v1, v6

    goto :goto_148

    :cond_ee
    :try_start_ee
    invoke-static {v1}, Lcom/samsung/android/sdk/scs/base/utils/FeatureHelper;->getFeatureConfig(Ljava/lang/String;)Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;

    move-result-object v1

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_ff

    goto :goto_ec

    :cond_ff
    invoke-virtual {v1}, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->getFeatures()Ljava/util/Map;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_116

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_117

    :catch_114
    move-exception v0

    goto :goto_127

    :cond_116
    move v1, v6

    :goto_117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_126} :catch_114

    goto :goto_148

    :goto_127
    invoke-static {v8}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "Unexpected behaviour when reading global settings"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ec

    :catch_132
    move-exception v0

    invoke-static {v8}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Failed to getString from global settings."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ec

    :catch_13d
    move-exception v0

    invoke-static {v8}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Failed to get package info."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ec

    :goto_148
    const-string/jumbo v0, "checkScsFeature(). retBundle == null!!!"

    if-ne v1, v6, :cond_1b7

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->isSIVSAvailableOSVersion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_15f

    sget-object v1, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_SIVS_FEATURES:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15f

    const-string/jumbo v1, "content://com.samsung.android.intellivoiceservice.feature"

    goto :goto_17a

    :cond_15f
    sget-object v1, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_VISUAL_FEATURES:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16b

    const-string/jumbo v1, "content://com.samsung.android.aicore.feature"

    goto :goto_17a

    :cond_16b
    sget-object v1, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_VISUAL_CLOUD_FEATURES:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_177

    const-string/jumbo v1, "content://com.samsung.android.visual.cloudcore.feature"

    goto :goto_17a

    :cond_177
    const-string/jumbo v1, "content://com.samsung.android.scs.feature"

    :goto_17a
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v4, "getFeatureVersionFromProvider()"

    invoke-static {v8, v4}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "featureSupportRequest"

    const/4 v7, 0x0

    :try_start_188
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v1, v4, v5, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_190} :catch_191

    goto :goto_1a8

    :catch_191
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkScsFeature(). "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a8
    if-nez v7, :cond_1af

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v6

    goto :goto_1b7

    :cond_1af
    const-string/jumbo p0, "constVersion"

    invoke-virtual {v7, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    move v1, p0

    :cond_1b7
    :goto_1b7
    if-ne v1, v6, :cond_1bf

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x7d0

    goto :goto_210

    :cond_1bf
    if-nez v1, :cond_1cd

    invoke-static {v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "checkScsFeature(). FEATURE_TEXT_GET_DOCUMENT_CATEGORY is not available!!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x5

    goto :goto_210

    :cond_1cd
    const/4 p0, -0x1

    const/4 v0, 0x3

    if-ne v1, p0, :cond_1dd

    invoke-static {v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "checkScsFeature(). SCS doesn\'t know FEATURE_TEXT_GET_DOCUMENT_CATEGORY. SCS update might be required."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1db
    move v3, v0

    goto :goto_210

    :cond_1dd
    sget-object p0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->sinceVersionMap:Ljava/util/Map;

    invoke-interface {p0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f0

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1f3

    :cond_1f0
    const p0, 0x7fffffff

    :goto_1f3
    if-ge v1, p0, :cond_210

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkScsFeature(). FEATURE_TEXT_GET_DOCUMENT_CATEGORY, scsVersion: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sinceVersion: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1db

    :cond_210
    :goto_210
    invoke-static {v3}, Lcom/samsung/android/sdk/scs/base/feature/FeatureStatusCache;->setStatus(I)V

    return v3

    :catch_214
    const-string/jumbo p0, "dump(), "

    const-string v0, " does not exist"

    invoke-static {p0, v4, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/feature/FeatureStatusCache;->setStatus(I)V

    return p0

    :cond_229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "checkFeature(). input is null. context: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", feature: FEATURE_TEXT_GET_DOCUMENT_CATEGORY"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x12c

    return p0
.end method

.method public static isSIVSAvailableOSVersion(Landroid/content/Context;)Z
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->isWatch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->sIsVst:Ljava/lang/Boolean;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_8} :catch_1e

    if-eqz v0, :cond_b

    goto :goto_1c

    :cond_b
    :try_start_b
    const-string/jumbo v0, "android.software.xr.immersive"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->sIsVst:Ljava/lang/Boolean;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1c} :catch_1c
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_1c} :catch_1c

    :catch_1c
    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    return p0

    :catch_1e
    const/4 p0, 0x0

    return p0
.end method

.method public static isWatch(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->sIsWatch:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo v0, "android.hardware.type.watch"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->sIsWatch:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_1e} :catch_1f

    return p0

    :catch_1f
    const/4 p0, 0x0

    return p0
.end method
