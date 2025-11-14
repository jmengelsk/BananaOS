.class public final synthetic Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PermissionPolicyService;

    return-void
.end method


# virtual methods
.method public final onPermissionsChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->synchronizeUidPermissionsAndAppOpsAsync(I)V

    return-void
.end method
