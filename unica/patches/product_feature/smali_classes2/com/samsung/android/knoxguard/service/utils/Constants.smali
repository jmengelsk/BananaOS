.class public Lcom/samsung/android/knoxguard/service/utils/Constants;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final ALARM_ACTION_RETRY_LOCK:I = 0x1

.field public static final ALARM_TYPE:Ljava/lang/String; = "alarm_type"

.field public static final ALARM_TYPE_UNDEFINED:I = -0x1

.field public static final CSC_FEATURE_SUPPORT_KNOXGUARD:Ljava/lang/String; = "CscFeature_Knox_SupportKnoxGuard"

.field public static final EMMC_CID:Ljava/lang/String; = "/sys/block/mmcblk0/device/cid"

.field public static final EMMC_NAME:Ljava/lang/String; = "/sys/block/mmcblk0/device/name"

.field public static final EMMC_UN:Ljava/lang/String; = "/sys/block/mmcblk0/device/unique_number"

.field public static final EMMC_UN_R:Ljava/lang/String; = "/sys/class/sec/mmc/un"

.field public static final ERROR_CLIENT_APP_DATA_CLEARED:Ljava/lang/String; = "3001"

.field public static final ERROR_CLIENT_INTEGRITY_FOR_CHINA:Ljava/lang/String; = "3040"

.field public static final ERROR_KGTA_APSERIAL_FAILED:Ljava/lang/String; = "1002"

.field public static final ERROR_KGTA_HMAC_MISMATCH:Ljava/lang/String; = "1004"

.field public static final ERROR_KGTA_INIT_FAILED:Ljava/lang/String; = "1001"

.field public static final ERROR_KGTA_RPMB_UNAVAILABLE:Ljava/lang/String; = "1003"

.field public static final ERROR_LOCK_FROM_USER_PRESENT:Ljava/lang/String; = "2003"

.field public static final ERROR_RETRY_LOCK_DEFAULT:Ljava/lang/String; = "2002"

.field public static final INTENT_KG_PACKAGE_ADDED:Ljava/lang/String; = "com.samsung.kgclient.android.intent.action.KG_PACKAGE_ADDED"

.field public static final INTENT_RETRY_LOCK:Ljava/lang/String; = "com.samsung.android.knoxguard.RETRY_LOCK"

.field public static final INTENT_SECSETUPWIZARD_COMPLETE:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

.field public static final INTENT_SETUPWIZARD_COMPLETE:Ljava/lang/String; = "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

.field public static final IS_FIRST_API_SUPPORT_SF_POLICY:Z

.field public static final IS_SUPPORT_KGTA:Z

.field public static final JSON_CLIENT_DATA_COMPANY:Ljava/lang/String; = "companyName"

.field public static final JSON_CLIENT_DATA_STATUS:Ljava/lang/String; = "status"

.field public static final JSON_KG_POLICY_COMPANY:Ljava/lang/String; = "companyName"

.field public static final JSON_KG_POLICY_GENERAL:Ljava/lang/String; = "generalInfo"

.field public static final KG_APP_TITLE:Ljava/lang/String; = "Payment Services"

.field public static final KG_LOG_URI:Landroid/net/Uri;

.field public static final KG_OTP_BIT_SYSTEM_PROPERTY:Ljava/lang/String; = "ro.boot.kg.bit"

.field public static final KG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.kgclient"

.field public static final KG_PERMISSION:Ljava/lang/String; = "com.samsung.android.knoxguard.STATUS"

.field public static final KG_SERVICE_VERSION:I = 0xa21fe81

.field public static final KG_STATE_ACTIVE:I = 0x2

.field public static final KG_STATE_CHECKING:I = 0x1

.field public static final KG_STATE_COMPLETED:I = 0x4

.field public static final KG_STATE_ERROR:I = 0x5

.field public static final KG_STATE_LOCKED:I = 0x3

.field public static final KG_STATE_PRENORMAL:I = 0x0

.field public static final KG_SYSTEM_PROPERTY:Ljava/lang/String; = "knox.kg.state"

.field public static final MESSAGE_TYPE_COMPLETE:Ljava/lang/String; = "complete"

.field public static final OTP_BIT_FIRST_BOOT:Ljava/lang/String; = "00"

.field public static final OTP_BIT_KG_COMPLETED:Ljava/lang/String; = "11"

.field public static final OTP_BIT_KG_ENABLED:Ljava/lang/String; = "01"

.field public static final OTP_BIT_KG_UNKNOWN:Ljava/lang/String; = "FF"

.field public static final POWEROFF_CODE_SYSTEMUI_DISABLED:I = 0x1

.field public static final POWEROFF_CODE_SYSTEMUI_HIDDEN:I = 0x2

.field public static final POWEROFF_CODE_SYSTEMUI_NOTREADY:I = 0x4

.field public static final PROTECTED_APP_OPS_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETRY_LOCK_ALARM_PERIOD:J = 0x493e0L

.field public static final RLC_STATE_BLINKED:Ljava/lang/String; = "Blink"

.field public static final RLC_STATE_CHECKING:Ljava/lang/String; = "Checking"

.field public static final RLC_STATE_COMPLETED:Ljava/lang/String; = "Completed"

.field public static final RLC_STATE_LOCKED:Ljava/lang/String; = "Locked"

.field public static final RLC_STATE_NORMAL:Ljava/lang/String; = "Normal"

.field public static final RLC_STATE_NULL:Ljava/lang/String; = ""

.field public static final RLC_STATE_PRENORMAL:Ljava/lang/String; = "Prenormal"

.field public static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final SYSTEMUI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final TA_INFO_AP_SERIAL:I = 0x4

.field public static final TA_INFO_CERT_PROVISIONED:I = 0x2

.field public static final TA_INFO_HOTP_RETRY_COUNTER:I = 0x3

.field public static final TA_INFO_VERSION:I = 0x1

.field public static final TA_V3:I = 0x3

.field public static final TA_V4:I = 0x4

.field public static final TZ_KGTA_INIT_FAILED:I = -0x3ee

.field public static final TZ_KGTA_RPMB_HMAC_MISMATCH:I = 0x207

.field public static final TZ_KGTA_RPMB_UNAVAILABLE:I = 0x201

.field public static final UFS_UN:Ljava/lang/String; = "/sys/class/scsi_host/host0/unique_number"

.field public static final UFS_UN_R:Ljava/lang/String; = "/sys/class/sec/ufs/un"

.field public static final V3_OTP_BIT_KG_FUSED:Ljava/lang/String; = "1"

.field public static final V3_OTP_BIT_KG_INITIAL:Ljava/lang/String; = "0"

.field public static final strState:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string/jumbo v0, "content://com.samsung.android.kgclient.statusprovider/CONTENT_LOG"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/utils/Constants;->KG_LOG_URI:Landroid/net/Uri;

    const-string v5, "Completed"

    const-string v6, "Error"

    const-string/jumbo v1, "Prenormal"

    const-string v2, "Checking"

    const-string v3, "Active"

    const-string/jumbo v4, "Locked"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/utils/Constants;->strState:[Ljava/lang/String;

    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x1e

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2c

    move v2, v4

    goto :goto_2d

    :cond_2c
    move v2, v1

    :goto_2d
    sput-boolean v2, Lcom/samsung/android/knoxguard/service/utils/Constants;->IS_SUPPORT_KGTA:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x23

    if-lt v0, v2, :cond_38

    move v1, v4

    :cond_38
    sput-boolean v1, Lcom/samsung/android/knoxguard/service/utils/Constants;->IS_FIRST_API_SUPPORT_SF_POLICY:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/knoxguard/service/utils/Constants;->PROTECTED_APP_OPS_LIST:Ljava/util/List;

    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x77

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x7d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
