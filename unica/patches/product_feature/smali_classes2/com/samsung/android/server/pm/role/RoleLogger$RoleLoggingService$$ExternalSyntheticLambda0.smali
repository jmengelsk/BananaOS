.class public final synthetic Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService;Landroid/app/job/JobParameters;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService;

    iput-object p2, p0, Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService;

    iget-object p0, p0, Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    sget v1, Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService;->$r8$clinit:I

    const-string v1, "Finished"

    const-string/jumbo v2, "RoleLogger"

    const/4 v3, 0x0

    :try_start_c
    sget-object v4, Lcom/samsung/android/server/pm/role/RoleLogger;->sRoleLoggingServiceName:Landroid/content/ComponentName;

    const-string v4, "Check role holders"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/server/pm/role/RoleLogger;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sget-object v5, Lcom/samsung/android/server/pm/role/RoleLogger;->ROLES_TO_LOG:[Ljava/lang/String;

    invoke-static {v4, v0, v5}, Lcom/samsung/android/server/pm/role/RoleLogger;->-$$Nest$mgetEachRoleHolder(Lcom/samsung/android/server/pm/role/RoleLogger;Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/server/pm/SALoggingHelper;->sendSettingLog(Landroid/content/Context;Ljava/util/HashMap;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_21} :catch_2a
    .catchall {:try_start_c .. :try_end_21} :catchall_28

    invoke-virtual {v0, p0, v3}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_28
    move-exception v4

    goto :goto_39

    :catch_2a
    move-exception v4

    :try_start_2b
    sget-object v5, Lcom/samsung/android/server/pm/role/RoleLogger;->sRoleLoggingServiceName:Landroid/content/ComponentName;

    const-string v5, "Failed to log role holders"

    invoke-static {v2, v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_28

    invoke-virtual {v0, p0, v3}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_39
    invoke-virtual {v0, p0, v3}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    sget-object p0, Lcom/samsung/android/server/pm/role/RoleLogger;->sRoleLoggingServiceName:Landroid/content/ComponentName;

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v4
.end method
