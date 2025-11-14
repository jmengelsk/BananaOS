.class public abstract Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final ACTION_PICK_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ACTION_PICK_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ACTION_SEND:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CALL_BUTTON:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CALL_BUTTON_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CALL_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CALL_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_PHOTOPICKER_SELECTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_PICK_INSERT_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_SEND_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_WEB_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_DATA_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_DATA_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_MIME_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_MIME_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_RAW_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_RAW_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final EMERGENCY_CALL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final GET_CONTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final HOME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final MOBILE_NETWORK_SETTINGS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final OPEN_DOCUMENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_NFC_NDEF_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_NFC_TAG_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_NFC_TECH_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_PICK_INSERT_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_SEND_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_WEB_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PICK_INTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PICK_RAW_INTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final RECOGNIZE_SPEECH:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final SEND_INTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final SET_ALARM:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final SMS_MMS_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final SMS_MMS_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final USB_DEVICE_ATTACHED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 42

    const-string/jumbo v0, "video/*"

    const-string/jumbo v1, "image/*"

    const-string/jumbo v2, "vnd.android.cursor.item/calls"

    const-string/jumbo v3, "vnd.android.cursor.dir/calls"

    const-string/jumbo v4, "vnd.android.cursor.item/person"

    const-string/jumbo v5, "vnd.android.cursor.item/phone_v2"

    const-string/jumbo v6, "vnd.android.cursor.item/phone"

    const-string v7, "*/*"

    new-instance v8, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v8}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const-string/jumbo v9, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v8, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v10, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v8, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v11, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v12, "android.intent.category.BROWSABLE"

    invoke-virtual {v8, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    :try_start_34
    invoke-virtual {v8, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_37
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_34 .. :try_end_37} :catch_37

    :catch_37
    :try_start_37
    invoke-virtual {v8, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_3a
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_37 .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3a
    invoke-virtual {v8, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_3d
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_3a .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    invoke-virtual {v8, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_40
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_3d .. :try_end_40} :catch_40

    :catch_40
    :try_start_40
    invoke-virtual {v8, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_43
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_40 .. :try_end_43} :catch_43

    :catch_43
    new-instance v13, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-direct {v13, v8, v14, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v13, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v8, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v8}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v8, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v9, "tel"

    invoke-virtual {v8, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v10, "sip"

    invoke-virtual {v8, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v13, "voicemail"

    invoke-virtual {v8, v13}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v16, v0

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    invoke-direct {v0, v8, v14, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const-string/jumbo v8, "android.intent.action.DIAL"

    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v14, "android.intent.action.VIEW"

    invoke-virtual {v0, v14}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    :try_start_8f
    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_92
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_8f .. :try_end_92} :catch_92

    :catch_92
    :try_start_92
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_95
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_92 .. :try_end_95} :catch_95

    :catch_95
    :try_start_95
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_98
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_95 .. :try_end_98} :catch_98

    :catch_98
    :try_start_98
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_9b
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_98 .. :try_end_9b} :catch_9b

    :catch_9b
    :try_start_9b
    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_9e
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_9b .. :try_end_9e} :catch_9e

    :catch_9e
    move-object/from16 v17, v1

    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-object/from16 v18, v7

    const/4 v7, 0x4

    invoke-direct {v1, v0, v7, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    :try_start_bb
    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_be
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_bb .. :try_end_be} :catch_be

    :catch_be
    :try_start_be
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_c1
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_be .. :try_end_c1} :catch_c1

    :catch_c1
    :try_start_c1
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_c4
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_c1 .. :try_end_c4} :catch_c4

    :catch_c4
    :try_start_c4
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_c7
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_c4 .. :try_end_c7} :catch_c7

    :catch_c7
    :try_start_c7
    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_ca
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_c7 .. :try_end_ca} :catch_ca

    :catch_ca
    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v7, 0x1

    move-object/from16 v19, v2

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2, v7, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2, v7, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2, v7, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.CALL_BUTTON"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v7, 0x4

    invoke-direct {v2, v0, v7, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v2, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_BUTTON:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v14}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SENDTO"

    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v7, "sms"

    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v15, "smsto"

    invoke-virtual {v0, v15}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v20, v3

    const-string/jumbo v3, "mms"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v21, v4

    const-string/jumbo v4, "mmsto"

    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v22, v5

    new-instance v5, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-object/from16 v24, v1

    move-object/from16 v23, v6

    const/4 v1, 0x0

    const/4 v6, 0x2

    invoke-direct {v5, v0, v6, v1, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v5, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v14}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-object/from16 v25, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-direct {v1, v0, v6, v4, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const-string/jumbo v1, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-direct {v1, v0, v6, v5, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MOBILE_NETWORK_SETTINGS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-direct {v1, v0, v6, v5, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->HOME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    move-object/from16 v5, v18

    :try_start_213
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_216
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_213 .. :try_end_216} :catch_216

    :catch_216
    new-instance v6, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-object/from16 v18, v3

    move-object/from16 v26, v15

    const/4 v3, 0x0

    const/4 v15, 0x1

    invoke-direct {v6, v0, v3, v3, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v6, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->GET_CONTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const-string/jumbo v3, "android.provider.action.PICK_IMAGES"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v6, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-object/from16 v27, v7

    const/4 v7, 0x1

    const/4 v15, 0x0

    invoke-direct {v6, v0, v15, v15, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v6, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    move-object/from16 v6, v17

    :try_start_249
    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_24c
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_249 .. :try_end_24c} :catch_24c

    :catch_24c
    move-object/from16 v7, v16

    :try_start_24e
    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_251
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_24e .. :try_end_251} :catch_251

    :catch_251
    new-instance v15, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-object/from16 v17, v6

    move-object/from16 v16, v7

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v15, v0, v7, v7, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v15, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const-string/jumbo v6, "android.intent.action.OPEN_DOCUMENT"

    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    :try_start_26f
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_272
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_26f .. :try_end_272} :catch_272

    :catch_272
    new-instance v7, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-object/from16 v28, v3

    const/4 v3, 0x1

    const/4 v15, 0x0

    invoke-direct {v7, v0, v15, v15, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v7, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->OPEN_DOCUMENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.PICK"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    :try_start_28b
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_28e
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_28b .. :try_end_28e} :catch_28e

    :catch_28e
    new-instance v7, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-object/from16 v29, v13

    const/4 v13, 0x1

    const/4 v15, 0x0

    invoke-direct {v7, v0, v15, v15, v13}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v7, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v7, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v13, 0x1

    const/4 v15, 0x0

    invoke-direct {v7, v0, v15, v15, v13}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v7, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const-string/jumbo v7, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v7, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v13, 0x4

    const/4 v15, 0x0

    invoke-direct {v7, v0, v13, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v7, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->RECOGNIZE_SPEECH:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const-string/jumbo v7, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v13, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v0, v13}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v15, "android.provider.action.MOTION_PHOTO_CAPTURE"

    invoke-virtual {v0, v15}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v30, v10

    const-string/jumbo v10, "android.provider.action.MOTION_PHOTO_CAPTURE_SECURE"

    invoke-virtual {v0, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v31, v12

    const-string/jumbo v12, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v32, v8

    const-string/jumbo v8, "android.provider.MediaStore.RECORD_SOUND"

    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v33, v4

    const-string/jumbo v4, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v34, v6

    const-string/jumbo v6, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v35, v1

    const-string/jumbo v1, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    move-object/from16 v36, v3

    new-instance v3, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-object/from16 v39, v1

    move-object/from16 v38, v2

    move-object/from16 v37, v14

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v14, 0x0

    invoke-direct {v3, v0, v2, v14, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v3, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SET_ALARM"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SHOW_ALARMS"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SET_TIMER"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v3, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SET_ALARM:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    :try_start_356
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_359
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_356 .. :try_end_359} :catch_359

    :catch_359
    new-instance v3, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-object/from16 v40, v5

    const/4 v5, 0x1

    const/4 v14, 0x0

    invoke-direct {v3, v0, v14, v5, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v3, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_SEND:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const-string/jumbo v3, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v5, 0x0

    const/4 v14, 0x1

    invoke-direct {v3, v0, v5, v14, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v3, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->USB_DEVICE_ATTACHED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.CALL"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-object/from16 v41, v9

    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v14, 0x0

    invoke-direct {v3, v0, v5, v9, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v3, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v3, v39

    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v4, 0x18

    const/4 v15, 0x0

    invoke-direct {v3, v0, v4, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v3, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const-string/jumbo v3, "android.provider.action.USER_SELECT_IMAGES_FOR_APP"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v15, 0x0

    invoke-direct {v3, v0, v4, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v3, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_PHOTOPICKER_SELECTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v3, v38

    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v5, v40

    :try_start_3f5
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_3f8
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_3f5 .. :try_end_3f8} :catch_3f8

    :catch_3f8
    new-instance v6, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v15, 0x0

    invoke-direct {v6, v0, v4, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v6, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_SEND_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_40e
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_411
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_40e .. :try_end_411} :catch_411

    :catch_411
    new-instance v6, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v13, 0x1

    const/4 v15, 0x0

    invoke-direct {v6, v0, v4, v13, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v6, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_SEND_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    move-object/from16 v6, v37

    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v7, "https"

    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v7, "http"

    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v7, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v15, 0x0

    invoke-direct {v7, v0, v4, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v7, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_WEB_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v7, "https"

    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v7, "http"

    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v7, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v13, 0x1

    const/4 v15, 0x0

    invoke-direct {v7, v0, v4, v13, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v7, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_WEB_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_45d
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_460
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_45d .. :try_end_460} :catch_460

    :catch_460
    new-instance v7, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v15, 0x0

    invoke-direct {v7, v0, v4, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v7, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    move-object/from16 v7, v36

    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v8, v35

    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v9, "android.intent.action.EDIT"

    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v9, "android.intent.action.INSERT"

    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v9, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v9, v34

    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_48e
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_491
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_48e .. :try_end_491} :catch_491

    :catch_491
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    move-object/from16 v10, v33

    invoke-virtual {v0, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v12, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v15, 0x0

    invoke-direct {v12, v0, v4, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v12, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_PICK_INSERT_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v8, "android.intent.action.EDIT"

    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v8, "android.intent.action.INSERT"

    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v8, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_4c1
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_4c4
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_4c1 .. :try_end_4c4} :catch_4c4

    :catch_4c4
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v13, 0x1

    const/4 v15, 0x0

    invoke-direct {v8, v0, v4, v13, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v8, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_PICK_INSERT_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    move-object/from16 v8, v32

    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    move-object/from16 v9, v31

    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    move-object/from16 v10, v41

    invoke-virtual {v0, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v12, v30

    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v13, v29

    invoke-virtual {v0, v13}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v14, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-object/from16 v36, v7

    const/4 v7, 0x1

    const/4 v15, 0x0

    invoke-direct {v14, v0, v4, v7, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v14, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v7, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v15, 0x0

    invoke-direct {v7, v0, v4, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v7, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    move-object/from16 v7, v27

    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v14, v26

    invoke-virtual {v0, v14}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v15, v18

    invoke-virtual {v0, v15}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v4, v25

    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v40, v5

    new-instance v5, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-object/from16 v26, v1

    move-object/from16 v25, v2

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v5, v0, v1, v2, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v5, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-object/from16 v27, v4

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-direct {v2, v0, v4, v5, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v2, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    move-object/from16 v1, v17

    :try_start_57f
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_582
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_57f .. :try_end_582} :catch_582

    :catch_582
    move-object/from16 v1, v16

    :try_start_584
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_587
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_584 .. :try_end_587} :catch_587

    :catch_587
    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-direct {v1, v0, v4, v5, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const-string/jumbo v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v5, v4, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_NFC_TAG_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const-string/jumbo v1, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    invoke-direct {v1, v0, v5, v4, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_NFC_TECH_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const-string/jumbo v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    invoke-direct {v1, v0, v5, v4, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_NFC_NDEF_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v0, v2, v5, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct {v1, v0, v2, v5, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_BUTTON_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    move-object/from16 v1, v23

    :try_start_611
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_614
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_611 .. :try_end_614} :catch_614

    :catch_614
    move-object/from16 v1, v22

    :try_start_616
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_619
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_616 .. :try_end_619} :catch_619

    :catch_619
    move-object/from16 v1, v21

    :try_start_61b
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_61e
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_61b .. :try_end_61e} :catch_61e

    :catch_61e
    move-object/from16 v1, v20

    :try_start_620
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_623
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_620 .. :try_end_623} :catch_623

    :catch_623
    move-object/from16 v1, v19

    :try_start_625
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_628
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_625 .. :try_end_628} :catch_628

    :catch_628
    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct {v1, v0, v2, v5, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct {v1, v0, v2, v5, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-direct {v1, v0, v2, v5, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v4, v27

    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x2

    const/4 v15, 0x0

    invoke-direct {v1, v0, v2, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    move-object/from16 v5, v40

    :try_start_6a7
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_6aa
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_6a7 .. :try_end_6aa} :catch_6aa

    :catch_6aa
    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v15, 0x0

    invoke-direct {v1, v0, v15, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SEND_INTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    move-object/from16 v7, v36

    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    :try_start_6bf
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_6c2
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_6bf .. :try_end_6c2} :catch_6c2

    :catch_6c2
    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v15, 0x0

    invoke-direct {v1, v0, v15, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PICK_INTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v15, 0x0

    invoke-direct {v1, v0, v15, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PICK_RAW_INTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    return-void
.end method

.method public static getDefaultCrossProfileTelephonyIntentFilters(Z)Ljava/util/List;
    .registers 5

    if-eqz p0, :cond_15

    sget-object p0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v2, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v3, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    filled-new-array {v1, v2, v3, p0, v0}, [Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_15
    sget-object p0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v2, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    filled-new-array {v1, v2, p0, v0}, [Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
