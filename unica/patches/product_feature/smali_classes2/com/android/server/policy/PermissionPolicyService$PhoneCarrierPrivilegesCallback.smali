.class public final Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;


# instance fields
.field public final mPhoneId:I

.field public final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    iput p2, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->mPhoneId:I

    return-void
.end method


# virtual methods
.method public final onCarrierPrivilegesChanged(Ljava/util/Set;Ljava/util/Set;)V
    .locals 5

    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    iget-object p2, p1, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p2

    iput-object p2, p1, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    iget-object p1, p1, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_1

    const-string/jumbo p0, "PermissionPolicyService"

    const-string p1, "Cannot grant default permissions to Carrier Service app. TelephonyManager is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget p2, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->mPhoneId:I

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-class p2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    iget-object v0, v0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/permission/LegacyPermissionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/LegacyPermissionManager;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    iget-object v3, v3, Lcom/android/server/policy/PermissionPolicyService;->mPackageManager:Landroid/content/pm/PackageManager;

    aget v4, p2, v2

    invoke-virtual {v3, p1, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    aget v3, p2, v2

    invoke-virtual {v0, p1, v3}, Landroid/permission/LegacyPermissionManager;->grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
