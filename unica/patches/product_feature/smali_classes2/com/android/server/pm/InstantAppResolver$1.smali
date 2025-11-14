.class public final Lcom/android/server/pm/InstantAppResolver$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic val$computer:Lcom/android/server/pm/Computer;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$instantAppInstaller:Landroid/content/pm/ActivityInfo;

.field public final synthetic val$origIntent:Landroid/content/Intent;

.field public final synthetic val$requestObj:Landroid/content/pm/InstantAppRequest;

.field public final synthetic val$sanitizedIntent:Landroid/content/Intent;

.field public final synthetic val$token:Ljava/lang/String;

.field public final synthetic val$userManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/InstantAppRequest;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$computer:Lcom/android/server/pm/Computer;

    iput-object p2, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$userManager:Lcom/android/server/pm/UserManagerService;

    iput-object p3, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$origIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$token:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iput-object p6, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$sanitizedIntent:Landroid/content/Intent;

    iput-object p7, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$instantAppInstaller:Landroid/content/pm/ActivityInfo;

    iput-object p8, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$context:Landroid/content/Context;

    return-void
.end method
