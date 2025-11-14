.class public final Lcom/android/server/vibrator/HapticFeedbackCustomization;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mHapticCustomizations:Landroid/util/SparseArray;

.field public final mHapticCustomizationsForSourceRotary:Landroid/util/SparseArray;

.field public final mHapticCustomizationsForSourceTouchScreen:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HapticFeedbackCustomization"

    :try_start_5
    invoke-static {p1}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->readCustomizationFile(Landroid/content/res/Resources;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    if-nez v1, :cond_19

    const-string/jumbo v1, "No loadable haptic feedback customization from file."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    goto :goto_28

    :catch_17
    move-exception v1

    goto :goto_1e

    :cond_19
    invoke-static {v1, p2}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->parseVibrations(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/VibratorInfo;)Landroid/util/SparseArray;

    move-result-object v1
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_1d} :catch_17
    .catch Lcom/android/internal/vibrator/persistence/XmlParserException; {:try_start_5 .. :try_end_1d} :catch_17
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1d} :catch_17

    goto :goto_28

    :goto_1e
    const-string v2, "Error parsing haptic feedback customizations from file"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    :goto_28
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_35

    const v0, 0x1170010

    invoke-static {p1, p2, v0}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->loadCustomizedFeedbackVibrationFromRes(Landroid/content/res/Resources;Landroid/os/VibratorInfo;I)Landroid/util/SparseArray;

    move-result-object v1

    :cond_35
    iput-object v1, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizations:Landroid/util/SparseArray;

    const v0, 0x1170011

    invoke-static {p1, p2, v0}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->loadCustomizedFeedbackVibrationFromRes(Landroid/content/res/Resources;Landroid/os/VibratorInfo;I)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForSourceRotary:Landroid/util/SparseArray;

    const v0, 0x1170012

    invoke-static {p1, p2, v0}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->loadCustomizedFeedbackVibrationFromRes(Landroid/content/res/Resources;Landroid/os/VibratorInfo;I)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForSourceTouchScreen:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizations:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForSourceRotary:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForSourceTouchScreen:Landroid/util/SparseArray;

    return-void
.end method

.method public static loadCustomizedFeedbackVibrationFromRes(Landroid/content/res/Resources;Landroid/os/VibratorInfo;I)Landroid/util/SparseArray;
    .registers 4

    const-string v0, "HapticFeedbackCustomization"

    :try_start_2
    invoke-static {p0, p2}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->readCustomizationResources(Landroid/content/res/Resources;I)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p0

    if-nez p0, :cond_16

    const-string/jumbo p0, "No loadable haptic feedback customization from res."

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0

    :catch_14
    move-exception p0

    goto :goto_1b

    :cond_16
    invoke-static {p0, p1}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->parseVibrations(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/VibratorInfo;)Landroid/util/SparseArray;

    move-result-object p0
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_1a} :catch_14
    .catch Lcom/android/internal/vibrator/persistence/XmlParserException; {:try_start_2 .. :try_end_1a} :catch_14
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1a} :catch_14

    return-object p0

    :goto_1b
    const-string p1, "Error parsing haptic feedback customizations from res"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0
.end method

.method public static parseVibrations(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/VibratorInfo;)Landroid/util/SparseArray;
    .registers 15

    const-string/jumbo v0, "haptic-feedback-constants"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    :goto_15
    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_9f

    const-string/jumbo v4, "constant"

    invoke-static {p0, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    const-string/jumbo v6, "id"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    invoke-static {p0, v6}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeIntNonNegative(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    const-string v8, "HapticFeedbackCustomization"

    if-eqz v7, :cond_53

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Multiple customizations found for effect "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0

    :cond_53
    invoke-static {p0, v5}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v7

    const-string/jumbo v9, "Unsupported empty customization tag for effect "

    invoke-static {v6, v9}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x1

    invoke-static {p0, v7}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseElement(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/os/vibrator/persistence/ParsedVibration;->resolve(Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object v7

    if-eqz v7, :cond_9a

    invoke-virtual {v7}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v9

    const-wide v11, 0x7fffffffffffffffL

    cmp-long v9, v9, v11

    if-nez v9, :cond_97

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v7}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "Vibration for effect ID %d is repeating, which is not allowed as a haptic feedback: %s"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0

    :cond_97
    invoke-virtual {v3, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9a
    invoke-static {p0, v4, v5}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V

    goto/16 :goto_15

    :cond_9f
    invoke-static {p0, v0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readDocumentEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    return-object v3
.end method

.method public static readCustomizationFile(Landroid/content/res/Resources;)Lcom/android/modules/utils/TypedXmlPullParser;
    .registers 5

    const-string v0, "HapticFeedbackCustomization"

    const v1, 0x1040377

    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_a} :catch_33

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v2

    :cond_11
    :try_start_11
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_16} :catch_2b

    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p0

    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->setFeature(Ljava/lang/String;Z)V

    invoke-interface {p0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string/jumbo v1, "Successfully opened customization file."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :catch_2b
    move-exception p0

    const-string/jumbo v1, "Specified customization file not found."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_33
    move-exception p0

    const-string v1, "Customization file directory config not found."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public static readCustomizationResources(Landroid/content/res/Resources;I)Lcom/android/modules/utils/TypedXmlPullParser;
    .registers 3

    const-string v0, "HapticFeedbackCustomization"

    :try_start_2
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_6} :catch_11

    const-string/jumbo p1, "Successfully opened customization resource."

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p0

    return-object p0

    :catch_11
    move-exception p0

    const-string p1, "Haptic customization resource not found."

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method
