.class public final synthetic Lcom/android/server/pm/InstantAppResolverConnection$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstantAppResolver$1;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstantAppResolver$1;Ljava/util/ArrayList;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InstantAppResolver$1;

    iput-object p2, p0, Lcom/android/server/pm/InstantAppResolverConnection$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/android/server/pm/InstantAppResolverConnection$1$$ExternalSyntheticLambda0;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/InstantAppResolverConnection$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InstantAppResolver$1;

    iget-object v4, v0, Lcom/android/server/pm/InstantAppResolverConnection$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iget-wide v11, v0, Lcom/android/server/pm/InstantAppResolverConnection$1$$ExternalSyntheticLambda0;->f$2:J

    const/4 v0, 0x0

    if-eqz v4, :cond_2e

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2e

    iget-object v5, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$origIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    iget-object v2, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iget-object v10, v2, Landroid/content/pm/InstantAppRequest;->hostDigestPrefixSecure:[I

    const/4 v7, 0x0

    iget-object v9, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$token:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$computer:Lcom/android/server/pm/Computer;

    iget-object v3, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$userManager:Lcom/android/server/pm/UserManagerService;

    const/4 v6, 0x0

    invoke-static/range {v2 .. v10}, Lcom/android/server/pm/InstantAppResolver;->filterInstantAppIntent(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_2e

    iget-object v0, v2, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    :cond_2e
    move-object v15, v0

    iget-object v0, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iget-object v13, v0, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    iget-object v14, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$sanitizedIntent:Landroid/content/Intent;

    iget-object v2, v0, Landroid/content/pm/InstantAppRequest;->callingPackage:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/InstantAppRequest;->callingFeatureId:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/InstantAppRequest;->verificationBundle:Landroid/os/Bundle;

    iget-object v5, v0, Landroid/content/pm/InstantAppRequest;->resolvedType:Ljava/lang/String;

    iget v6, v0, Landroid/content/pm/InstantAppRequest;->userId:I

    iget-object v0, v0, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v7, v0, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    iget-object v8, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$token:Ljava/lang/String;

    const/16 v23, 0x0

    move-object/from16 v24, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    invoke-static/range {v13 .. v24}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object v0

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$instantAppInstaller:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iget-object v2, v2, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v2, v2, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    if-eqz v2, :cond_75

    const/4 v2, 0x0

    goto :goto_76

    :cond_75
    const/4 v2, 0x1

    :goto_76
    const/16 v3, 0x384

    iget-object v4, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$token:Ljava/lang/String;

    invoke-static {v3, v2, v11, v12, v4}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IIJLjava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/pm/InstantAppResolver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
